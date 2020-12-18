/*
 * Copyright (C) 2020 Consiglio Nazionale delle Ricerche
 *       This program is free software: you can redistribute it and/or modify
 *        it under the terms of the GNU Affero General Public License as
 *        published by the Free Software Foundation, either version 3 of the
 *        License, or (at your option) any later version.
 *
 *        This program is distributed in the hope that it will be useful,
 *        but WITHOUT ANY WARRANTY; without even the implied warranty of
 *        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *       GNU Affero General Public License for more details.
 *
 *       You should have received a copy of the GNU Affero General Public License
 *       along with this program.  If not, see <https://www.gnu.org/licenses/>.
 *
 */

package it.cnr.si.cool.jconon.io.model;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

/**
 * ServiceWithSubscriptionKeys
 */
@Getter
@Setter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class ServiceWithSubscriptionKeys {
    @JsonProperty("service_name")
    private String serviceName = null;

    @JsonProperty("department_name")
    private String departmentName = null;

    @JsonProperty("organization_name")
    private String organizationName = null;

    @JsonProperty("organization_fiscal_code")
    private String organizationFiscalCode = null;

    @JsonProperty("authorized_cidrs")
    private List<String> authorizedCidrs = new ArrayList<String>();

    @JsonProperty("version")
    private Integer version = null;

    @JsonProperty("require_secure_channels")
    private Boolean requireSecureChannels = false;

    @JsonProperty("is_visible")
    private Boolean isVisible = false;

    @JsonProperty("service_metadata")
    private ServiceMetadata serviceMetadata = null;

    @JsonProperty("id")
    private String id = null;

    @JsonProperty("service_id")
    private String serviceId = null;

    @JsonProperty("authorized_recipients")
    private List<String> authorizedRecipients = new ArrayList<String>();

    @JsonProperty("max_allowed_payment_amount")
    private BigDecimal maxAllowedPaymentAmount = null;

    @JsonProperty("primary_key")
    private String primaryKey = null;

    @JsonProperty("secondary_key")
    private String secondaryKey = null;

}

