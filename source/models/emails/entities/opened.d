module models.emails.entities.opened;

@safe:
import models.emails;

class DEMLOpened : DOOPEntity {
  mixin(EntityThis!("EMLOpened"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "interactionId": UUIDAttributeClass, // Unique identifier of the interaction."]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Contact ID"]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Account ID"]),
        "marketingEmailId": UUIDAttributeClass, // Message"]),
        "customerJourneyId": UUIDAttributeClass, // Customer Journey ID"]),
        "messageId": UUIDAttributeClass, // Message ID"]),
        "sendingId": UUIDAttributeClass, // Sending ID"]),
        "emailDomain": StringAttributeClass, // Email domain"]),
        "emailAddressUsed": StringAttributeClass, // Email address used"]),
        "customerJourneyIterationId": UUIDAttributeClass, // Customer journey iteration ID"]),
        "interactionType": StringAttributeClass, // Interaction type"]),
        "usageType": StringAttributeClass, // Usage type"]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Organization ID"]),
        "timestamp": StringAttributeClass, // Timestamp"]),
        "visitorId": UUIDAttributeClass, // Visitor ID"]),
        "sessionId": UUIDAttributeClass, // Session ID"]),
        "countryIsoCode": OOPIntegerAttribute.descriptions(["en":"Country ISO code"]),
        "state": StringAttributeClass, // State"]),
        "city": StringAttributeClass, // City"]),
        "postalCode": OOPIntegerAttribute.descriptions(["en":"Postal code"]),
        "browserId": UUIDAttributeClass, // Browser ID"]),
        "browserVersion": StringAttributeClass, // Browser version"]),
        "operatingSystemId": UUIDAttributeClass, // Operating system ID"]),
        "operatingSystemVersion": StringAttributeClass, // Operating system version"]),
        "activityId": OOPLinkAttribute("aplActivity").descriptions(["en":"Activity ID"]),
        "visitorAnonymousStatus": StringAttributeClass, // Visitor anonymous status"]),
        "leadId": UUIDAttributeClass, // Lead ID"]),
      ])
      .registerPath("email_opened");
  }
}
mixin(EntityCalls!("EMLOpened"));

unittest {
  version(uim_entities) {
    assert(EMLOpened);
  
  auto entity = EMLOpened;
  
/*   // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}