module models.emails.entities.clicked;

@safe:
import models.emails;

class DEMLClicked : DOOPEntity {
  mixin(EntityThis!("EMLClicked"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "interactionId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the interaction."]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Contact ID"]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Account ID"]),
        "messageId": OOPUUIDAttribute.descriptions(["en":"Message ID"]),
        "customerJourneyId": OOPUUIDAttribute.descriptions(["en":"Customer Journey ID"]),
        "linkId": OOPUUIDAttribute.descriptions(["en":"Link ID"]),
        "linkFriendlyName": OOPStringAttribute.descriptions(["en":"Link friendly name"]),
        "originalLink": OOPStringAttribute.descriptions(["en":"Original link"]),
        "originalUrl": OOPUrlAttribute.descriptions(["en":"Original URL"]),
        "sendingId": OOPUUIDAttribute.descriptions(["en":"Sending ID"]),
        "emailDomain": OOPStringAttribute.descriptions(["en":"Email domain"]),
        "emailAddressUsed": OOPStringAttribute.descriptions(["en":"Email address used"]),
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
        "customerJourneyIterationId": OOPUUIDAttribute.descriptions(["en":"Customer journey iteration ID"]),
        "usageType": OOPStringAttribute.descriptions(["en":"Usage type"]),
        "activityId": OOPLinkAttribute("aplActivity").descriptions(["en":"Activity ID"]),
        "visitorAnonymousStatus": OOPStringAttribute.descriptions(["en":"Visitor anonymous status"]),
        "leadId": OOPUUIDAttribute.descriptions(["en":"Lead ID"]),
      ])
      .registerPath("email_clicked");
  }
}
mixin(EntityCalls!("EMLClicked"));

unittest {
  version(uim_entities) {
    assert(EMLClicked);
  
  auto entity = EMLClicked;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);
  
  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}