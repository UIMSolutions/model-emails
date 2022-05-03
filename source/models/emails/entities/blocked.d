module models.emails.entities.blocked;

@safe:
import models.emails;

class DEMLBlocked : DOOPEntity {
  mixin(EntityThis!("EMLBlocked"));
  
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
        "usageType": StringAttributeClass, // Usage type"]),
        "interactionType": StringAttributeClass, // Interaction type"]),
        "timestamp": StringAttributeClass, // Timestamp"]),
        "blockedReason": StringAttributeClass, // Blocked reason"]),
        "customerJourneyIterationId": UUIDAttributeClass, // Customer journey iteration ID"]),
        "activityId": OOPLinkAttribute("aplActivity").descriptions(["en":"Activity ID"]),
      ])
      .registerPath("email_blocked");
  }
}
mixin(EntityCalls!("EMLBlocked"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(EMLBlocked);
  
  auto entity = EMLBlocked;
  
/*   // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}