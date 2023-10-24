<#if call??>
    <input id="callId" type="hidden" value="${call['cmis:objectId']}">
    <div class="container">
        <div class="container-fluid">
          <div class="row-fluid">
            <h1>${message(call['cmis:objectTypeId'])} - ${call['jconon_call:codice']}</h1>
            <hr>
            <#if isActive>
                <h3 class="alert alert-success">${message('label.call.active')}</h3>
            <#else>
                <h3 class="alert alert-danger">${message('label.call.expired')}</h3>
            </#if>
            <div class="well">
                <h4 class="text-info">${message('label.jconon_call_descrizione')}</h4>
                <span><#if locale_suffix != 'it' && call['jconon_call:descrizione_en']??>${call['jconon_call:descrizione_en']}<#else>${call['jconon_call:descrizione']}</#if></span>
                <#if call['jconon_call:numero_posti']??>
                    <h4 class="text-info">${message('label.jconon_call_numero_posti')}</h4>
                    <span>${call['jconon_call:numero_posti']}</span>
                </#if>
                <h4 class="text-info">${message('label.jconon_call_requisiti')}</h4>
                <span><#if locale_suffix != 'it' && call['jconon_call:requisiti_en']??>${call['jconon_call:requisiti_en']}<#else>${call['jconon_call:requisiti']}</#if></span>
            </div>
            <div class="well">
                <#if call['jconon_call:profilo']??>
                    <h4 class="text-info">${message('label.jconon_call_profilo')}</h4>
                    <span>${call['jconon_call:profilo']}</span>
                </#if>
                <#if call['jconon_call:struttura_destinataria']??>
                    <h4 class="text-info">${message('label.jconon_call_struttura_destinataria')}</h4>
                    <span><#if locale_suffix != 'it' && call['jconon_call:struttura_destinataria_en']??>${call['jconon_call:struttura_destinataria_en']}<#else>${call['jconon_call:struttura_destinataria']}</#if></span>
                </#if>
                <#if call['jconon_call:sede']??>
                    <h4 class="text-info">${message('label.jconon_call_sede')}</h4>
                    <span><#if locale_suffix != 'it' && call['jconon_call:sede_en']??>${call['jconon_call:sede_en']}<#else>${call['jconon_call:sede']}</#if></span>
                </#if>
                <#if call['jconon_call:data_inizio_invio_domande_index']??>
                    <h4 class="text-info">${message('label.jconon_call_data_inizio_invio_domande')}</h4>
                    <span>${call['jconon_call:data_inizio_invio_domande_index']?datetime.iso?string("dd/MM/yyyy HH:mm:ss")}</span>
                </#if>
                <#if call['jconon_call:data_fine_invio_domande_index']??>
                    <h4 class="text-info">${message('label.jconon_call_data_fine_invio_domande')}</h4>
                    <span>${call['jconon_call:data_fine_invio_domande_index']?datetime.iso?string("dd/MM/yyyy HH:mm:ss")}</span>
                </#if>
            </div>
            <div class="well">
                <h2>${message('actions.attachments')}</h2>
                <hr>
                <ul>
                    <#list attachments as attachment>
                        <li>${attachment.typeLabel} <a href="${contextURL}/rest/content?nodeRef=${attachment['cmis:objectId']}&guest=true">${attachment['cmis:name']}</a></li>
                    </#list>
                </ul>
            </div>
            <#if isMacroCall>
                <div class="well">
                    <h2>${message('actions.detail')}</h2>
                    <hr>
                    <ol>
                        <#list childs as child>
                            <li><a href="${contextURL}/call-detail?callCode=${child}">${child}</a></li>
                        </#list>
                    </ol>
                </div>
            </#if>
            <#if isActive && !isMacroCall>
                <a class="btn btn-primary btn-block" href="${contextURL}/manage-application?callId=${call['cmis:objectId']}"><h4><i class="icon-edit"></i> ${message('label.button.presenta.domanda')}</h4></a>
            </#if>
            <#if !isActive && canWiewApplications>
                <div class="form-row mt-1">
                    <a class="btn btn-primary span6" href="${contextURL}/applications?cmis:objectId=${call['cmis:objectId']}"><h4><i class="icon-folder-open-alt"></i> ${message('label.button.applications')}</h4></a>
                    <a class="btn btn-info span6" href="#" id="exportApplications"><h4><i class="icon-download"></i> ${message('label.button.exportApplications')}</h4></a>
                </div>
            </#if>
          </div>
        </div>
    </div>
<#else>
    <div class="container">
        <div class="alert alert-error">
            <strong><h1>${message('label.alert.call.notfound')}</h1></strong>
        </div>
    </div>
</#if>
