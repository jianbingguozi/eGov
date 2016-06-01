package org.egov.works.web.controller.abstractestimate;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.egov.commons.dao.EgwStatusHibernateDAO;
import org.egov.commons.dao.EgwTypeOfWorkHibernateDAO;
import org.egov.commons.dao.FinancialYearDAO;
import org.egov.commons.dao.FunctionHibernateDAO;
import org.egov.commons.dao.FundHibernateDAO;
import org.egov.dao.budget.BudgetGroupDAO;
import org.egov.eis.web.controller.workflow.GenericWorkFlowController;
import org.egov.infra.admin.master.entity.AppConfigValues;
import org.egov.infra.admin.master.service.AppConfigValueService;
import org.egov.infra.admin.master.service.BoundaryService;
import org.egov.infra.security.utils.SecurityUtils;
import org.egov.services.masters.SchemeService;
import org.egov.works.abstractestimate.entity.AbstractEstimate;
import org.egov.works.abstractestimate.entity.MultiYearEstimate;
import org.egov.works.abstractestimate.service.EstimateService;
import org.egov.works.lineestimate.entity.LineEstimate;
import org.egov.works.lineestimate.entity.LineEstimateDetails;
import org.egov.works.lineestimate.entity.enums.LineEstimateStatus;
import org.egov.works.lineestimate.service.LineEstimateDetailService;
import org.egov.works.lineestimate.service.LineEstimateService;
import org.egov.works.master.service.NatureOfWorkService;
import org.egov.works.master.service.OverheadService;
import org.egov.works.master.service.ScheduleCategoryService;
import org.egov.works.master.service.UOMService;
import org.egov.works.utils.WorksConstants;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping(value = "/abstractestimate")
public class CreateAbstractEstimateController extends GenericWorkFlowController {

    @Autowired
    private EstimateService estimateService;

    @Autowired
    private LineEstimateDetailService lineEstimateDetailService;

    @Autowired
    private OverheadService overheadService;

    @Autowired
    private ScheduleCategoryService scheduleCategoryService;

    @Autowired
    private AppConfigValueService appConfigValuesService;

    @Autowired
    private NatureOfWorkService natureOfWorkService;

    @Autowired
    private EgwTypeOfWorkHibernateDAO egwTypeOfWorkHibernateDAO;

    @Autowired
    private FundHibernateDAO fundHibernateDAO;

    @Autowired
    private FunctionHibernateDAO functionHibernateDAO;

    @Autowired
    private BudgetGroupDAO budgetGroupDAO;

    @Autowired
    private SchemeService schemeService;

    @Autowired
    private SecurityUtils securityUtils;

    @Autowired
    private BoundaryService boundaryService;

    @Autowired
    private FinancialYearDAO financialYearDAO;

    @Autowired
    private LineEstimateService lineEstimateService;

    @Autowired
    private UOMService uomService;

    @Autowired
    private EgwStatusHibernateDAO egwStatusHibernateDAO;

    @RequestMapping(value = "/newform", method = RequestMethod.GET)
    public String showAbstractEstimateForm(@RequestParam final String estimateNumber, final Model model) {
        Date currentDate = new Date();
        AbstractEstimate abstractEstimate = new AbstractEstimate();
        LineEstimateDetails lineEstimateDetails = lineEstimateDetailService.findLineEstimateByEstimateNumber(
                estimateNumber, WorksConstants.STATUS_TECHNICAL_SANCTIONED);
        LineEstimate lineEstimate = lineEstimateDetails.getLineEstimate();
        abstractEstimate.setExecutingDepartment(lineEstimateDetails.getLineEstimate().getExecutingDepartment());
        abstractEstimate.setWard(lineEstimateDetails.getLineEstimate().getWard());
        if (lineEstimate.getLocation() != null)
            abstractEstimate.setLocation(lineEstimate.getLocation().getName());
        abstractEstimate.setNatureOfWork(lineEstimate.getNatureOfWork());
        abstractEstimate.setParentCategory(lineEstimate.getTypeOfWork());
        abstractEstimate.setCategory(lineEstimate.getSubTypeOfWork());
        if (lineEstimate.getWorkCategory().equals(WorksConstants.SLUM_WORK)) {
            model.addAttribute("workCategory", "Slum Work");
        } else {
            model.addAttribute("workCategory", "Non Slum Work");
        }
        MultiYearEstimate multiYearEstimate = new MultiYearEstimate();
        List<MultiYearEstimate> multiYearEstimateList = new ArrayList<MultiYearEstimate>();
        multiYearEstimate.setFinancialYear(financialYearDAO.getFinancialYearByDate(new Date()));
        multiYearEstimate.setPercentage(100d);
        multiYearEstimateList.add(multiYearEstimate);
        abstractEstimate.setMultiYearEstimates(multiYearEstimateList);
        model.addAttribute("lineEstimateDetails", lineEstimateDetails);
        model.addAttribute("abstractEstimate", abstractEstimate);
        model.addAttribute("currentDate", currentDate);
        model.addAttribute("lineEstimate", lineEstimate);

        final List<AppConfigValues> values = appConfigValuesService.getConfigValuesByModuleAndKey(
                WorksConstants.WORKS_MODULE_NAME, WorksConstants.APPCONFIG_KEY_SHOW_SERVICE_FIELDS);
        final AppConfigValues value = values.get(0);
        if (value.getValue().equalsIgnoreCase("Yes"))
            model.addAttribute("isServiceVATRequired", true);
        else
            model.addAttribute("isServiceVATRequired", false);

        setDropDownValues(model);
        return "newAbstractEstimate-form";
    }

    private void setDropDownValues(final Model model) {
        model.addAttribute("overheads", overheadService.getOverheadsByDate(new Date()));
        model.addAttribute("scheduleCategories", scheduleCategoryService.getAllScheduleCategories());
        model.addAttribute("funds", fundHibernateDAO.findAllActiveFunds());
        model.addAttribute("functions", functionHibernateDAO.getAllActiveFunctions());
        model.addAttribute("budgetHeads", budgetGroupDAO.getBudgetGroupList());
        model.addAttribute("schemes", schemeService.findAll());
        model.addAttribute("departments", lineEstimateService.getUserDepartments(securityUtils.getCurrentUser()));
        model.addAttribute("typeOfWork", egwTypeOfWorkHibernateDAO.getTypeOfWorkForPartyTypeContractor());
        model.addAttribute("natureOfWork", natureOfWorkService.findAll());
        model.addAttribute("finYear", financialYearDAO.findAll());
        model.addAttribute("uoms", uomService.getAllUOMs());
    }

    @RequestMapping(value = "/newform", method = RequestMethod.POST)
    public String saveAbstractEstimate(@ModelAttribute final AbstractEstimate abstractEstimate,
            final RedirectAttributes redirectAttributes, final Model model, final BindingResult errors,
            @RequestParam("file") final MultipartFile[] files, final HttpServletRequest request) {
            if (abstractEstimate.getState() == null)
                abstractEstimate.setEgwStatus(egwStatusHibernateDAO.getStatusByModuleAndCode(WorksConstants.MODULETYPE,
                        LineEstimateStatus.CREATED.toString()));
            estimateService.createAbstractEstimate(abstractEstimate);
            return "abstractEstimate-success";
    }

}
