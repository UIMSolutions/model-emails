module models.emails.entities.forwarded;

@safe:
import models.emails;

class DEMLForwarded : DOOPEntity {
  mixin(EntityThis!("EMLForwarded"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "interactionId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the interaction."]),
        "messageId": OOPUUIDAttribute.descriptions(["en":"Message ID"]),
        "customerJourneyId": OOPUUIDAttribute.descriptions(["en":"Customer Journey ID"]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Contact ID"]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Account ID"]),
        "sendingId": OOPUUIDAttribute.descriptions(["en":"Sending ID"]),
        "emailDomain": OOPStringAttribute.descriptions(["en":"Email domain"]),
        "emailAddressUsed": OOPStringAttribute.descriptions(["en":"Email address used"]),
        "customerJourneyIterationId": OOPUUIDAttribute.descriptions(["en":"Customer journey iteration ID"]),
        "usageType": OOPStringAttribute.descriptions(["en":"Usage type"]),
        "secondaryRecipientProfileId": OOPUUIDAttribute.descriptions(["en":"Secondary recipient profile ID"]),
        "interactionType": OOPStringAttribute.descriptions(["en":"Interaction type"]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Organization ID"]),
        "timestamp": OOPStringAttribute.descriptions(["en":"Timestamp"]),
        "visitorId": OOPUUIDAttribute.descriptions(["en":"Visitor ID"]),
        "sessionId": OOPUUIDAttribute.descriptions(["en":"Session ID"]),
        "countryIsoCode": OOPIntegerAttribute.descriptions(["en":"Country ISO code"]),
        "state": OOPStringAttribute.descriptions(["en":"State"]),
        "city": OOPStringAttribute.descriptions(["en":"City"]),
        "postalCode": OOPIntegerAttribute.descriptions(["en":"Postal code"]),
        "browserId": OOPUUIDAttribute.descriptions(["en":"Browser ID"]),
        "browserVersion": OOPStringAttribute.descriptions(["en":"Browser version"]),
        "operatingSystemId": OOPUUIDAttribute.descriptions(["en":"Operating system ID"]),
        "operatingSystemVersion": OOPStringAttribute.descriptions(["en":"Operating system version"]),
        "searchPhrase": OOPStringAttribute.descriptions(["en":"Search phrase"]),
        "searchEngineName": OOPStringAttribute.descriptions(["en":"Search engine name"]),
        "visitorReturningStatus": OOPStringAttribute.descriptions(["en":"Visitor returning status"]),
        "visitDuration": OOPStringAttribute.descriptions(["en":"Visit duration"]),
        "formSubmissionId": OOPUUIDAttribute.descriptions(["en":"Form submission ID"]),
        "visitorAnonymousStatus": OOPStringAttribute.descriptions(["en":"Visitor anonymous status"]),
        "leadId": OOPUUIDAttribute.descriptions(["en":"Lead ID"]),
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