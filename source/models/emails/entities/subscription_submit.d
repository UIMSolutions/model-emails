module models.emails.entities.subscription_submit;

@safe:
import models.emails;

class DEMLSubscriptionSubmit : DOOPEntity {
  mixin(OOPEntityThis!("EMLSubscriptionSubmit"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "interactionId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the interaction."]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Contact ID"]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Account ID"]),
        "messageId": OOPUUIDAttribute.descriptions(["en":"Message ID"]),
        "customerJourneyId": OOPUUIDAttribute.descriptions(["en":"Customer Journey ID"]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Organization ID"]),
        "sendingId": OOPUUIDAttribute.descriptions(["en":"Sending ID"]),
        "customerJourneyIterationId": OOPUUIDAttribute.descriptions(["en":"Customer journey iteration ID"]),
        "usageType": OOPStringAttribute.descriptions(["en":"Usage type"]),
        "interactionType": OOPStringAttribute.descriptions(["en":"Interaction type"]),
        "timestamp": OOPStringAttribute.descriptions(["en":"Timestamp"]),
        "countryIsoCode": OOPIntegerAttribute.descriptions(["en":"Country ISO code"]),
        "state": OOPStringAttribute.descriptions(["en":"State"]),
        "city": OOPStringAttribute.descriptions(["en":"City"]),
        "postalCode": OOPIntegerAttribute.descriptions(["en":"Postal code"]),
        "browserId": OOPUUIDAttribute.descriptions(["en":"Browser ID"]),
        "browserVersion": OOPStringAttribute.descriptions(["en":"Browser version"]),
        "operatingSystemId": OOPUUIDAttribute.descriptions(["en":"Operating system ID"]),
        "operatingSystemVersion": OOPStringAttribute.descriptions(["en":"Operating system version"]),
        "deviceType": OOPStringAttribute.descriptions(["en":"Device type"]),
        "deviceBrand": OOPStringAttribute.descriptions(["en":"Device brand"]),
        "deviceModel": OOPStringAttribute.descriptions(["en":"Device model"]),
      ])
      .registerPath("email_subscriptionsubmits");
  }
}
mixin(OOPEntityCalls!("EMLSubscriptionSubmit"));

unittest {
  version(uim_entities) {
    assert(EMLSubscriptionSubmit);
  
  auto entity = EMLSubscriptionSubmit;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}