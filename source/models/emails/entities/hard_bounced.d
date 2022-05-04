module models.emails.entities.hard_bounced;

@safe:
import models.emails;

class DEMLHardBounced : DOOPEntity {
  mixin(EntityThis!("EMLHardBounced"));
  
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
        "customerJourneyIterationId": UUIDAttributeClass, // Customer journey iteration ID"]),
        "usageType": StringAttributeClass, // Usage type"]),
        "interactionType": StringAttributeClass, // Interaction type"]),
        "timestamp": StringAttributeClass, // Timestamp"]),
        "bounceCategory": StringAttributeClass, // Bounce category"]),
        "remoteBounce": StringAttributeClass, // Remote bounce"]),
        "activityId": UUIDAttributeClass, // aplActivity").descriptions(["en":"Activity ID"]),
      ])
      .registerPath("email_hardbounced");
  }
}
mixin(EntityCalls!("EMLHardBounced"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(EMLHardBounced);
  
  auto entity = EMLHardBounced;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}