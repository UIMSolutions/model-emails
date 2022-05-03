module models.emails.entities.contains_blacklisted_links;

@safe:
import models.emails;

class DEMLContainsBlacklistedLinks : DOOPEntity {
  mixin(EntityThis!("EMLContainsBlacklistedLinks"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "interactionId": UUIDAttributeClass, // Unique identifier of the interaction."]),
        "contactId": UUIDAttributeClass, // Contact ID"]),
        "accountId": UUIDAttributeClass, // Account ID"]),
        "messageId": UUIDAttributeClass, // Message ID"]),
        "customerJourneyId": UUIDAttributeClass, // Customer Journey ID"]),
        "organizationId": UUIDAttributeClass, // Organization ID"]),
        "sendingId": UUIDAttributeClass, // Sending ID"]),
        "blacklistedLink": StringAttributeClass, // Blacklisted link"]),
        "customerJourneyIterationId": UUIDAttributeClass, // Customer journey iteration ID"]),
        "usageType": StringAttributeClass, // Usage type"]),
        "interactionType": StringAttributeClass, // Interaction type"]),
        "timestamp": StringAttributeClass, // Timestamp"]),
        "activityId": UUIDAttributeClass, // Activity ID"]),
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