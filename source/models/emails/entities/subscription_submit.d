module models.emails.entities.subscription_submit;

@safe:
import models.emails;

class DEMLSubscriptionSubmit : DOOPEntity {
  mixin(EntityThis!("EMLSubscriptionSubmit"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "interactionId": UUIDAttributeClass, // Unique identifier of the interaction."]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Contact ID"]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Account ID"]),
        "messageId": UUIDAttributeClass, // Message ID"]),
        "customerJourneyId": UUIDAttributeClass, // Customer Journey ID"]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Organization ID"]),
        "sendingId": UUIDAttributeClass, // Sending ID"]),
        "customerJourneyIterationId": UUIDAttributeClass, // Customer journey iteration ID"]),
        "usageType": StringAttributeClass, // Usage type"]),
        "interactionType": StringAttributeClass, // Interaction type"]),
        "timestamp": StringAttributeClass, // Timestamp"]),
        "countryIsoCode": OOPIntegerAttribute.descriptions(["en":"Country ISO code"]),
        "state": StringAttributeClass, // State"]),
        "city": StringAttributeClass, // City"]),
        "postalCode": OOPIntegerAttribute.descriptions(["en":"Postal code"]),
        "browserId": UUIDAttributeClass, // Browser ID"]),
        "browserVersion": StringAttributeClass, // Browser version"]),
        "operatingSystemId": UUIDAttributeClass, // Operating system ID"]),
        "operatingSystemVersion": StringAttributeClass, // Operating system version"]),
        "deviceType": StringAttributeClass, // Device type"]),
        "deviceBrand": StringAttributeClass, // Device brand"]),
        "deviceModel": StringAttributeClass, // Device model"]),
      ])
      .registerPath("email_subscriptionsubmits");
  }
}
mixin(EntityCalls!("EMLSubscriptionSubmit"));

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