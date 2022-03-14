module models.emails.entities.opened;

@safe:
import models.emails;

class DEMLOpened : DOOPEntity {
  mixin(OOPEntityThis!("EMLOpened"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "interactionId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the interaction."]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Contact ID"]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Account ID"]),
        "marketingEmailId": OOPUUIDAttribute.descriptions(["en":"Message"]),
        "customerJourneyId": OOPUUIDAttribute.descriptions(["en":"Customer Journey ID"]),
        "messageId": OOPUUIDAttribute.descriptions(["en":"Message ID"]),
        "sendingId": OOPUUIDAttribute.descriptions(["en":"Sending ID"]),
        "emailDomain": OOPStringAttribute.descriptions(["en":"Email domain"]),
        "emailAddressUsed": OOPStringAttribute.descriptions(["en":"Email address used"]),
        "customerJourneyIterationId": OOPUUIDAttribute.descriptions(["en":"Customer journey iteration ID"]),
        "interactionType": OOPStringAttribute.descriptions(["en":"Interaction type"]),
        "usageType": OOPStringAttribute.descriptions(["en":"Usage type"]),
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
        "activityId": OOPLinkAttribute("aplActivity").descriptions(["en":"Activity ID"]),
        "visitorAnonymousStatus": OOPStringAttribute.descriptions(["en":"Visitor anonymous status"]),
        "leadId": OOPUUIDAttribute.descriptions(["en":"Lead ID"]),
      ])
      .registerPath("email_opened");
  }
}
mixin(OOPEntityCalls!("EMLOpened"));

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