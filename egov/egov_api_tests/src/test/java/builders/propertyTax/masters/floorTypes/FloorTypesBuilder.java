package builders.propertyTax.masters.floorTypes;

import builders.propertyTax.AuditDetailsBuilder;
import entities.requests.propertyTax.AuditDetails;
import entities.requests.propertyTax.masters.floorType.FloorTypes;

import static data.ConstantData.tenantId;

public class FloorTypesBuilder {

    FloorTypes floorTypes = new FloorTypes();

    AuditDetails auditDetails = new AuditDetailsBuilder().build();

    public FloorTypesBuilder() {
        floorTypes.setId(0);
        floorTypes.setTenantId(tenantId);
        floorTypes.setDescription("Testing The floor types Master");
        floorTypes.setAuditDetails(auditDetails);
    }

    public FloorTypesBuilder withName(String name) {
        floorTypes.setName(name);
        return this;
    }

    public FloorTypesBuilder withCode(String code) {
        floorTypes.setCode(code);
        return this;
    }

    public FloorTypesBuilder withNameLocal(String nameLocal) {
        floorTypes.setNameLocal(nameLocal);
        return this;
    }

    public FloorTypesBuilder withId(int id) {
        floorTypes.setId(id);
        return this;
    }

    public FloorTypes build() {
        return floorTypes;
    }
}