<%--
 * edit.jsp
 *
 * Copyright (C) 2016 Universidad de Sevilla
 * 
 * The use of this project is hereby constrained to the conditions of the 
 * TDG Licence, a copy of which you may download from 
 * http://www.tdg-seville.info/License.html
 --%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib prefix="acme" tagdir="/WEB-INF/tags" %>

<%@taglib prefix="jstl" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="security"	uri="http://www.springframework.org/security/tags"%>
<%@taglib prefix="display" uri="http://displaytag.sf.net"%>

<form:form action="property/lessor/addAttributes.do" modelAttribute="value">

	<form:hidden path="id" />
	<form:hidden path="version" />
	<form:hidden path="attribute"/>
	<form:hidden path="property"/>

	<acme:textbox code="property.attribute.content" path="content"/>
	
	
	
	<input type="submit" name="save"
	value="<spring:message code="property.save" />"/>&nbsp; 	

	
	<input type="button" name="cancel"
		value="<spring:message code="property.cancel" />"
		onclick="location.href = 'property/display.do?propertyId=${value.property.id}';" />&nbsp;
	<br />

	

</form:form>