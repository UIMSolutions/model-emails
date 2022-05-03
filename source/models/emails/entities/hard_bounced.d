module models.emails.entities.hard_bounced;

@safe:
import models.emails;

class DEMLHardBounced : DOOPEntity {
  mixin(EntityThis!("EMLHardBounced"));
  
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
        "customerJourneyIterationId": OOPUUIDAttribute.descriptions(["en":"Customer journey iteration ID"]),
        "usageType": OOPStringAttribute.descriptions(["en":"Usage type"]),
        "interactionType": OOPStringAttribute.descriptions(["en":"Interaction type"]),
        "timestamp": OOPStringAttribute.descriptions(["en":"Timestamp"]),
        "bounceCategory": OOPStringAttribute.descriptions(["en":"Bounce category"]),
        "remoteBounce": OOPStringAttribute.descriptions(["en":"Remote bounce"]),
        "activityId": OOPLinkAttribute("aplActivity").descriptions(["en":"Activity ID"]),
      ])
      .registerPath("email_hardbounced");
  }
}
mixin(EntityCalls!("EMLHardBounced"));

unittest {
  version(uim_entities) {
    assert(EMLHardBounced);
  
  auto entity = EMLHardBounced;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}