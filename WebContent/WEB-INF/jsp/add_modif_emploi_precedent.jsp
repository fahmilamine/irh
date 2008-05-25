<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Ajout ou modification d'un emploi pr�c�dent</title>
    <link href="style/style.css" rel="stylesheet" type="text/css" />
</head>
<body>

<%@ include file="/WEB-INF/jsp/includes/header_menu.jsp" %>

<form:form method="post">
<fieldset>
<legend>Emploi pr�c�dent</legend>
	<input id="employeid" name="employeid" type="hidden" value="${employeId}"/>
	<form:errors path="employe" cssClass="error"/>
    <div class="ligne">
        <span class="label">Date d�but :</span>
        <form:input path="dateDebut" />
        <form:errors path="dateDebut" cssClass="error"/>
    </div>
    <div class="ligne">
        <span class="label">Date fin :</span>
        <form:input path="dateFin" />
        <form:errors path="dateFin" cssClass="error"/>
    </div>
    <div class="ligne">
        <span class="label">Entreprise :</span>
        <form:input path="entreprise" />
        <form:errors path="entreprise" cssClass="error"/>
    </div>
    <div class="ligne">
        <span class="label">Poste :</span>
        <form:input path="poste" />
        <form:errors path="poste" cssClass="error"/>
    </div>
    <div class="ligne">
        <span class="label">Contrat :</span>
        <form:select path="contrat">
        	<form:options items="${contrats}" itemValue="id" />
        </form:select>
    </div>
    <div class="ligne">
        <span class="label">D&eacute;scription :</span>
        <form:textarea path="description" />
        <form:errors path="description" cssClass="error"/>
    </div>
    
    <div class="ligne">
        <span class="label">&nbsp;</span>
        <a href="./modif_employe.htm">Retour</a>&nbsp;-&nbsp;<input type="submit" value="Valider" />
    </div>
</fieldset>
</form:form>

</body>
</html>
