module models.emails.entities.blocked;

@safe:
import models.emails;

class DEMLBlocked : DOOPEntity {
  mixin(EntityThis!("EMLBlocked"));
  
  override void initialize() {
    super.initialize;

    this
      .addValues([
        "interactionId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the interaction."]),
        "contactId": OOPLinkAttribute("aplContact").descriptions(["en":"Contact ID"]),
        "accountId": OOPLinkAttribute("aplAccount").descriptions(["en":"Account ID"]),
        "messageId": OOPUUIDAttribute.descriptions(["en":"Message ID"]),
        "customerJourneyId": OOPUUIDAttribute.descriptions(["en":"Customer Journey ID"]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Organization ID"]),
        "sendingId": OOPUUIDAttribute.descriptions(["en":"Sending ID"]),
        "usageType": OOPStringAttribute.descriptions(["en":"Usage type"]),
        "interactionType": OOPStringAttribute.descriptions(["en":"Interaction type"]),
        "timestamp": OOPStringAttribute.descriptions(["en":"Timestamp"]),
        "blockedReason": OOPStringAttribute.descriptions(["en":"Blocked reason"]),
        "customerJourneyIterationId": OOPUUIDAttribute.descriptions(["en":"Customer journey iteration ID"]),
        "activityId": OOPLinkAttribute("aplActivity").descriptions(["en":"Activity ID"]),
      ])
      .registerPath("email_blocked");
  }
}
mixin(EntityCalls!("EMLBlocked"));

unittest {
  version(uim_entities) {
    assert(EMLBlocked);
  
  auto entity = EMLBlocked;
  
/*   // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}