/*
 * eGov suite of products aim to improve the internal efficiency,transparency,
 *    accountability and the service delivery of the government  organizations.
 *
 *     Copyright (C) <2015>  eGovernments Foundation
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
package org.egov.egf.web.controller.expensebill;

import java.util.List;

import org.egov.commons.service.AccountdetailtypeService;
import org.egov.commons.service.ChartOfAccountsService;
import org.egov.egf.billsubtype.service.EgBillSubTypeService;
import org.egov.egf.web.controller.voucher.BaseVoucherController;
import org.egov.infra.admin.master.entity.AppConfigValues;
import org.egov.infra.admin.master.service.AppConfigValueService;
import org.egov.model.bills.EgBillSubType;
import org.egov.utils.FinancialConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

/**
 * @author venki
 *
 */

@Controller
public abstract class BaseBillController extends BaseVoucherController {

    @Autowired
    private EgBillSubTypeService egBillSubTypeService;

    @Autowired
    private AccountdetailtypeService accountdetailtypeService;

    @Autowired
    @Qualifier("chartOfAccountsService")
    private ChartOfAccountsService chartOfAccountsService;

    public BaseBillController(final AppConfigValueService appConfigValuesService) {
        super(appConfigValuesService);
    }

    public boolean isBillNumberGenerationAuto() {
        final List<AppConfigValues> configValuesByModuleAndKey = appConfigValuesService.getConfigValuesByModuleAndKey(
                FinancialConstants.MODULE_NAME_APPCONFIG, FinancialConstants.KEY_BILLNUMBER_APPCONFIG);
        if (configValuesByModuleAndKey.size() > 0)
            return "Y".equals(configValuesByModuleAndKey.get(0).getValue());
        else
            return false;
    }

    @Override
    protected void setDropDownValues(final Model model) {
        super.setDropDownValues(model);
        model.addAttribute("billNumberGenerationAuto", isBillNumberGenerationAuto());
        model.addAttribute("billSubTypes", getBillSubTypes());
        model.addAttribute("subLedgerTypes", accountdetailtypeService.findAll());
    }

    public List<EgBillSubType> getBillSubTypes() {
        return egBillSubTypeService.getByExpenditureType(FinancialConstants.STANDARD_EXPENDITURETYPE_CONTINGENT);
    }

}