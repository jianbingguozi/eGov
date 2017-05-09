/*
 * eGov suite of products aim to improve the internal efficiency,transparency,
 *    accountability and the service delivery of the government  organizations.
 *
 *     Copyright (C) <2017>  eGovernments Foundation
 *
 *     The updated version of eGov suite of products as by eGovernments Foundation
 *     is available at http://www.egovernments.org
 *
 *     This program is free software: you can redistribute it and/or modify
 *     it under the terms of the GNU General Public License as published by
 *     the Free Software Foundation, either version 3 of the License, or
 *     any later version.
 *
 *     This program is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU General Public License for more details.
 *
 *     You should have received a copy of the GNU General Public License
 *     along with this program. If not, see http://www.gnu.org/licenses/ or
 *     http://www.gnu.org/licenses/gpl.html .
 *
 *     In addition to the terms of the GPL license to be adhered to in using this
 *     program, the following additional terms are to be complied with:
 *
 *         1) All versions of this program, verbatim or modified must carry this
 *            Legal Notice.
 *
 *         2) Any misrepresentation of the origin of the material is prohibited. It
 *            is required that all modified versions of this material be marked in
 *            reasonable ways as different from the original version.
 *
 *         3) This license does not grant any rights to any user of the program
 *            with regards to rights under trademark law for use of the trade names
 *            or trademarks of eGovernments Foundation.
 *
 *   In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
 */

package org.egov.tl.web.controller.legacy;

import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE;
import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.io.IOException;

import javax.validation.Valid;
import javax.validation.ValidationException;

import org.egov.tl.entity.TradeLicense;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping("/legacylicense")
public class CreateLegacyLicenseController extends LegacyLicenseController {

    private static final String CREATE_LEGACY_LICENSE = "create-legacylicense";

    @ModelAttribute("tradeLicense")
    public TradeLicense tradeLicense() {
        return new TradeLicense();
    }

    @GetMapping(value = "/create")
    public String create(final TradeLicense tradeLicense, final Model model) {

        model.addAttribute("legacyFeePayStatus", legacyService.legacyFeePayStatusForCreate());
        model.addAttribute("legacyInstallmentwiseFees", legacyService.legacyInstallmentwiseFeesForCreate());

        return CREATE_LEGACY_LICENSE;
    }

    @PostMapping(value = "/create")
    public String create(@Valid final TradeLicense tradeLicense, final BindingResult errors,
            @RequestParam("files") final MultipartFile[] files, final Model model) throws IOException {

        if (errors.hasErrors()) {
            model.addAttribute("tradeLicense", tradeLicense);
            model.addAttribute("legacyInstallmentwiseFees", legacyService.legacyInstallmentwiseFeesForCreate());
            return CREATE_LEGACY_LICENSE;
        }
        try {
            legacyService.storeDocument(tradeLicense, files);
        } catch (final ValidationException e) {
            errors.rejectValue("files", e.getMessage());
            return CREATE_LEGACY_LICENSE;
        }
        
        legacyService.createLegacy(tradeLicense);

        return "redirect:/legacylicense/view/" + tradeLicense.getApplicationNumber();
    }

    @RequestMapping(value = "/old-licenseno-is-unique", method = GET, produces = APPLICATION_JSON_VALUE)
    @ResponseBody
    public Boolean checkOldLicenseNumber(@RequestParam final String oldLicenseNumber) {
        return licenseRepository.findByOldLicenseNumber(oldLicenseNumber) != null;
    }

}