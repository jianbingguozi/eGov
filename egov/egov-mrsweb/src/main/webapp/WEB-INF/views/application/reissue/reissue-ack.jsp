<%--
  ~    eGov  SmartCity eGovernance suite aims to improve the internal efficiency,transparency,
  ~    accountability and the service delivery of the government  organizations.
  ~
  ~     Copyright (C) 2017  eGovernments Foundation
  ~
  ~     The updated version of eGov suite of products as by eGovernments Foundation
  ~     is available at http://www.egovernments.org
  ~
  ~     This program is free software: you can redistribute it and/or modify
  ~     it under the terms of the GNU General Public License as published by
  ~     the Free Software Foundation, either version 3 of the License, or
  ~     any later version.
  ~
  ~     This program is distributed in the hope that it will be useful,
  ~     but WITHOUT ANY WARRANTY; without even the implied warranty of
  ~     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  ~     GNU General Public License for more details.
  ~
  ~     You should have received a copy of the GNU General Public License
  ~     along with this program. If not, see http://www.gnu.org/licenses/ or
  ~     http://www.gnu.org/licenses/gpl.html .
  ~
  ~     In addition to the terms of the GPL license to be adhered to in using this
  ~     program, the following additional terms are to be complied with:
  ~
  ~         1) All versions of this program, verbatim or modified must carry this
  ~            Legal Notice.
  ~            Further, all user interfaces, including but not limited to citizen facing interfaces,
  ~            Urban Local Bodies interfaces, dashboards, mobile applications, of the program and any
  ~            derived works should carry eGovernments Foundation logo on the top right corner.
  ~
  ~            For the logo, please refer http://egovernments.org/html/logo/egov_logo.png.
  ~            For any further queries on attribution, including queries on brand guidelines,
  ~            please contact contact@egovernments.org
  ~
  ~         2) Any misrepresentation of the origin of the material is prohibited. It
  ~            is required that all modified versions of this material be marked in
  ~            reasonable ways as different from the original version.
  ~
  ~         3) This license does not grant any rights to any user of the program
  ~            with regards to rights under trademark law for use of the trade names
  ~            or trademarks of eGovernments Foundation.
  ~
  ~   In case of any queries, you can reach eGovernments Foundation at contact@egovernments.org.
  ~
  --%>

<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<form:form  id="registrationsuccess-form" method ="post" class="form-horizontal form-groups-bordered">
	<div class="panel panel-primary" data-collapsed="0">
		<div class="panel-heading">
			<div class="panel-title text-center">
			</div>
		</div>
		<div class="row">
			<div class="col-md-12 text-center">
				<c:choose>
					<c:when test="${not empty message}">
	                    <c:out value="${message}"/>
	                </c:when>
	                <c:otherwise>
	                	<c:choose>
							<c:when test="${ackNumber != 'null'}">
								Your Re-Issue application no is <strong><c:out value="${ackNumber}"></c:out></strong>, <br /> Please use this for your any future references.
							</c:when>
							<c:otherwise>
								Marriage Registratio Re-Issue is successful...!!
							</c:otherwise>
						</c:choose>
	                </c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
</form:form>
<div class="buttonbottom" align="center">
<c:if test="${reIssue.status.code == 'CERTIFICATEREISSUED'}">
		<input type="button" name="printbutton" id="printbutton" value="print" class="btn btn-default" onclick="window.open('/mrs/certificate/reissue?id=${reIssue.id}','_blank');" />

</c:if>

		<input type="button" name="button2" id="button2" value="Close" class="btn btn-default" onclick="window.close();" />
</div>