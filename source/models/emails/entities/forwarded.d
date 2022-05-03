module models.emails.entities.forwarded;

@safe:
import models.emails;

class DEMLForwarded : DOOPEntity {
  mixin(EntityThis!("EMLForwarded"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "interactionId": UUIDAttributeClass, // Unique identifier of the interaction."]),
        "messageId": UUIDAttributeClass, // Message ID"]),
        "customerJourneyId": UUIDAttributeClass, // Customer Journey ID"]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Contact ID"]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Account ID"]),
        "sendingId": UUIDAttributeClass, // Sending ID"]),
        "emailDomain": StringAttributeClass, // Email domain"]),
        "emailAddressUsed": StringAttributeClass, // Email address used"]),
        "customerJourneyIterationId": UUIDAttributeClass, // Customer journey iteration ID"]),
        "usageType": StringAttributeClass, // Usage type"]),
        "secondaryRecipientProfileId": UUIDAttributeClass, // Secondary recipient profile ID"]),
        "interactionType": StringAttributeClass, // Interaction type"]),
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
        "searchPhrase": StringAttributeClass, // Search phrase"]),
        "searchEngineName": StringAttributeClass, // Search engine name"]),
        "visitorReturningStatus": StringAttributeClass, // Visitor returning status"]),
        "visitDuration": StringAttributeClass, // Visit duration"]),
        "formSubmissionId": UUIDAttributeClass, // Form submission ID"]),
        "visitorAnonymousStatus": StringAttributeClass, // Visitor anonymous status"]),
        "leadId": UUIDAttributeClass, // Lead ID"]),
      ])
      .registerPath("email_forwarded");
  }
}
mixin(EntityCalls!("EMLForwarded"));

unittest {
  version(uim_entities) {
    assert(EMLForwarded);
  
  auto entity = EMLForwarded;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}