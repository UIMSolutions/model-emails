module models.emails.entities.contains_blacklisted_links;

@safe:
import models.emails;

class DEMLContainsBlacklistedLinks : DEntity {
  mixin(EntityThis!("EMLContainsBlacklistedLinks"));
  
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
        "blacklistedLink": StringAttribute, // Blacklisted link"]),
        "customerJourneyIterationId": UUIDAttribute, // Customer journey iteration ID"]),
        "usageType": StringAttribute, // Usage type"]),
        "interactionType": StringAttribute, // Interaction type"]),
        "timestamp": StringAttribute, // Timestamp"]),
        "activityId": UUIDAttribute, // Activity ID"]),
      ])
      .registerPath("email_containsblacklistedlinks");
  }
}
mixin(EntityCalls!("EMLContainsBlacklistedLinks"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(EMLContainsBlacklistedLinks);
  
  auto entity = EMLContainsBlacklistedLinks;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}