delete from eg_wf_matrix where objecttype  = 'ContractorBillRegister';

--0 to 200000
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'NEW', NULL, NULL, 'Assistant Engineer', NULL, 'Created', 'Pending Check By Deputy Executive Engineer', 'Deputy Executive Engineer', 'Created', 'Save,Forward', 0, 200000, now(), now());
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Created', NULL, 'Pending Check By Deputy Executive Engineer', 'Deputy Executive Engineer', NULL, 'Checked', 'Pending Check By Junior Accountant/Senior Accountant/Accounts Officer', 'Junior Accountant,Senior Accountant,Accounts Officer', 'Pending Check By Junior Accountant/Senior Accountant/Accounts Officer', 'Submit,Reject', 0, 200000, now(), now());

INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Rejected', NULL, NULL,'Assistant engineer', null, 'Resubmitted', 'Pending Check By Deputy Executive Engineer', 'Deputy Executive Engineer', null, 'Forward,Cancel', 0, 200000, now(), now());
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Resubmitted', NULL, 'Pending Check By Deputy Executive Engineer', 'Deputy Executive Engineer', NULL, 'Checked', 'Pending Check By Junior Accountant/Senior Accountant/Accounts Officer', 'Junior Accountant,Senior Accountant,Accounts Officer', 'Pending Check By Junior Accountant/Senior Accountant/Accounts Officer', 'Submit,Reject', 0, 200000, now(), now());

--200000 to 1000000
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'NEW', NULL, NULL, 'Assistant Engineer', NULL, 'Created', 'Pending Check By Deputy Executive Engineer', 'Deputy Executive Engineer', 'Created', 'Save,Forward', 200000.1, 1000000, now(), now());
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Created', NULL, 'Pending Check By Deputy Executive Engineer', 'Deputy Executive Engineer', NULL, 'Checked', 'Pending Check By Executive Engineer', 'Executive Engineer', 'Pending Check By Executive Engineer', 'Submit,Reject', 200000.1, 1000000, now(), now());
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Checked', NULL, 'Pending Check By Executive Engineer', 'Executive Engineer', NULL, 'Checked', 'Pending Check By Junior Accountant/Senior Accountant/Accounts Officer', 'Junior Accountant,Senior Accountant,Accounts Officer', 'Pending Check By Junior Accountant/Senior Accountant/Accounts Officer', 'Submit,Reject', 200000.1, 1000000, now(), now());

INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Rejected', NULL, NULL,'Assistant engineer', null, 'Resubmitted', 'Pending Check By Deputy Executive Engineer', 'Deputy Executive Engineer', null, 'Forward,Cancel', 200000.1, 1000000, now(), now());
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Resubmitted', NULL, 'Pending Check By Deputy Executive Engineer', 'Deputy Executive Engineer', NULL, 'Checked', 'Pending Check By Executive Engineer', 'Executive Engineer', 'Checked', 'Submit,Reject', 200000.1, 1000000, now(), now());

--1000000 to 5000000
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'NEW', NULL, NULL, 'Assistant Engineer', NULL, 'Created', 'Pending Check By Deputy Executive Engineer', 'Deputy Executive Engineer', 'Created', 'Save,Forward', 1000000.1, 5000000, now(), now());
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Created', NULL, 'Pending Check By Deputy Executive Engineer', 'Deputy Executive Engineer', NULL, 'Checked', 'Pending Check By Executive Engineer', 'Executive Engineer', 'Pending Check By Executive Engineer', 'Submit,Reject', 1000000.1, 5000000, now(), now());
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Checked', NULL, 'Pending Check By Executive Engineer', 'Executive Engineer', NULL, 'Checked', 'Pending Check By Superintending Engineer', 'Superintending Engineer', 'Pending Check By Superintending Engineer', 'Submit,Reject', 1000000.1, 5000000, now(), now());
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Checked', NULL, 'Pending Check By Superintending Engineer', 'Superintending Engineer', NULL, 'Checked', 'Pending Check By Junior Accountant/Senior Accountant/Accounts Officer', 'Junior Accountant,Senior Accountant,Accounts Officer', 'Pending Check By Junior Accountant/Senior Accountant/Accounts Officer', 'Submit,Reject', 1000000.1, 5000000, now(), now());

INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Rejected', NULL, NULL,'Assistant engineer', null, 'Resubmitted', 'Pending Check By Deputy Executive Engineer', 'Deputy Executive Engineer', null, 'Forward,Cancel', 1000000.1, 5000000, now(), now());
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Resubmitted', NULL, 'Pending Check By Deputy Executive Engineer', 'Deputy Executive Engineer', NULL, 'Checked', 'Pending Check By Executive Engineer', 'Executive Engineer', 'Checked', 'Submit,Reject', 1000000.1, 5000000, now(), now());

-- >5000000
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'NEW', NULL, NULL, 'Assistant Engineer', NULL, 'Created', 'Pending Check By Deputy Executive Engineer', 'Deputy Executive Engineer', 'Created', 'Save,Forward', 5000000.1, NULL, now(), now());
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Created', NULL, 'Pending Check By Deputy Executive Engineer', 'Deputy Executive Engineer', NULL, 'Checked', 'Pending Check By Executive Engineer', 'Executive Engineer', 'Pending Check By Executive Engineer', 'Submit,Reject', 5000000.1, NULL, now(), now());
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Checked', NULL, 'Pending Check By Executive Engineer', 'Executive Engineer', NULL, 'Checked', 'Pending Check By Superintending Engineer', 'Superintending Engineer', 'Pending Check By Superintending Engineer', 'Submit,Reject', 5000000.1, NULL, now(), now());
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Checked', NULL, 'Pending Check By Superintending Engineer', 'Superintending Engineer', NULL, 'Checked', 'Pending Check By Chief Engineer', 'Chief Engineer', 'Pending Check By Chief Engineer', 'Submit,Reject', 5000000.1, NULL, now(), now());
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Checked', NULL, 'Pending Check By Chief Engineer', 'Chief Engineer', NULL, 'Checked', 'Pending Check By Junior Accountant/Senior Accountant/Accounts Officer', 'Junior Accountant,Senior Accountant,Accounts Officer', 'Pending Check By Junior Accountant/Senior Accountant/Accounts Officer', 'Submit,Reject', 5000000.1, NULL, now(), now());

INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Rejected', NULL, NULL,'Assistant engineer', null, 'Resubmitted', 'Pending Check By Deputy Executive Engineer', 'Deputy Executive Engineer', null, 'Forward,Cancel', 5000000.1, null, now(), now());
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Resubmitted', NULL, 'Pending Check By Deputy Executive Engineer', 'Deputy Executive Engineer', NULL, 'Checked', 'Pending Check By Executive Engineer', 'Executive Engineer', 'Checked', 'Submit,Reject', 5000000.1, null, now(), now());

--common financial approval
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Checked', NULL, 'Pending Check By Junior Accountant/Senior Accountant/Accounts Officer', 'Junior Accountant,Senior Accountant,Accounts Officer', NULL, 'Checked','Pending Check By Commissioner', 'Commissioner', 'Pending Check By Commissioner', 'Submit,Reject', 0, NULL, now(), now());
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES 
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Checked', NULL, 'Pending Check By Commissioner','Examiner Of Accounts', null, 'Checked', 'Pending Approval', 'Commissioner', 'Pending Approval', 'Submit,Reject', 0, null, now(), now());
INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES
(nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Checked', NULL, 'Pending Approval', 'Commissioner', NULL, 'Approved', 'END', 'NULL', 'NULL', 'Approve,Reject', 0, NULL, now(), now());


--rollback INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (nextval('eg_wf_matrix_seq'), 'ANY', 'ContractorBillRegister', 'NEW', NULL, NULL, 'Assistant engineer', 'NEWCONTRACTORBILLREGISTER', 'Created', 'Pending Approval', 'Superintending Engineer', 'Created', 'Forward', NULL, NULL, now(), now());
--rollback INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (nextval('eg_wf_matrix_seq'), 'ANY', 'ContractorBillRegister', 'Created', NULL, NULL, 'Superintending Engineer', 'NEWCONTRACTORBILLREGISTER', 'END', 'END', NULL, NULL, 'Approve,Reject', NULL, NULL, now(), now());
--rollback INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (nextval('eg_wf_matrix_seq'), 'ANY', 'ContractorBillRegister', 'Rejected', NULL, NULL, 'Assistant engineer', 'NEWCONTRACTORBILLREGISTER', 'Created', 'Pending Approval', 'Superintending Engineer', NULL, 'Forward,Cancel', NULL, NULL, now(), now());
--rollback INSERT INTO EG_WF_MATRIX (id, department, objecttype, currentstate, currentstatus, pendingactions, currentdesignation, additionalrule, nextstate, nextaction, nextdesignation, nextstatus, validactions, fromqty, toqty, fromdate, todate) VALUES (nextval('seq_eg_wf_matrix'), 'ANY', 'ContractorBillRegister', 'Resubmitted', NULL, NULL, 'Assistant engineer', NULL, 'Approved', 'END', NULL, NULL, 'Approve,Reject', NULL, NULL, now(), now());
--rollback UPDATE EG_WF_MATRIX SET nextstate = 'Resubmitted' where objecttype = 'ContractorBillRegister' and currentstate = 'Rejected';
