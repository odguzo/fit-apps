

<%@ page import="general.Integrante" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'integrante.label', default: 'Integrante')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${integranteInstance}">
            <div class="errors">
                <g:renderErrors bean="${integranteInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="apellidos"><g:message code="integrante.apellidos.label" default="Apellidos" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: integranteInstance, field: 'apellidos', 'errors')}">
                                    <g:textField name="apellidos" value="${integranteInstance?.apellidos}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="isFat"><g:message code="integrante.isFat.label" default="Is Fat" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: integranteInstance, field: 'isFat', 'errors')}">
                                    <g:checkBox name="isFat" value="${integranteInstance?.isFat}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="nombre"><g:message code="integrante.nombre.label" default="Nombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: integranteInstance, field: 'nombre', 'errors')}">
                                    <g:textField name="nombre" value="${integranteInstance?.nombre}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="semestre"><g:message code="integrante.semestre.label" default="Semestre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: integranteInstance, field: 'semestre', 'errors')}">
                                    <g:textField name="semestre" value="${integranteInstance?.semestre}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
