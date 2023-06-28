module models.emails.entities.subscription_submit;

@safe:
import models.emails;

class DEMLSubscriptionSubmit : DEntity {
  mixin(EntityThis!("EMLSubscriptionSubmit"));
  
  override void initialize(DConfigurationValue configSettings = null) {
    super.initialize(configSettings);

    this
      .addValues([
        "interactionId": UUIDAttribute, // Unique identifier of the interaction."]),
        "contactId": UUIDAttribute, // Contact ID"]),
        "accountId": UUIDAttribute, // Account ID"]),
        "messageId": UUIDAttribute, // Message ID"]),
        "customerJourneyId": UUIDAttribute, // Customer Journey ID"]),
        "organizationId": UUIDAttribute, // Organization ID"]),
        "sendingId": UUIDAttribute, // Sending ID"]),
        "customerJourneyIterationId": UUIDAttribute, // Customer journey iteration ID"]),
        "usageType": StringAttribute, // Usage type"]),
        "interactionType": StringAttribute, // Interaction type"]),
        "timestamp": StringAttribute, // Timestamp"]),
        "countryIsoCode": IntegerAttribute, //Country ISO code"]),
        "state": StringAttribute, // State"]),
        "city": StringAttribute, // City"]),
        "postalCode": IntegerAttribute, //Postal code"]),
        "browserId": UUIDAttribute, // Browser ID"]),
        "browserVersion": StringAttribute, // Browser version"]),
        "operatingSystemId": UUIDAttribute, // Operating system ID"]),
        "operatingSystemVersion": StringAttribute, // Operating system version"]),
        "deviceType": StringAttribute, // Device type"]),
        "deviceBrand": StringAttribute, // Device brand"]),
        "deviceModel": StringAttribute, // Device model"]),
      ])
      .registerPath("email_subscriptionsubmits");
  }
}
mixin(EntityCalls!("EMLSubscriptionSubmit"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(EMLSubscriptionSubmit);
  
  auto entity = EMLSubscriptionSubmit;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}