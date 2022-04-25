module models.emails.entities.contains_blacklisted_links;

@safe:
import models.emails;

class DEMLContainsBlacklistedLinks : DOOPEntity {
  mixin(EntityThis!("EMLContainsBlacklistedLinks"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "interactionId": OOPUUIDAttribute.descriptions(["en":"Unique identifier of the interaction."]),
        "contactId": OOPUUIDAttribute.descriptions(["en":"Contact ID"]),
        "accountId": OOPUUIDAttribute.descriptions(["en":"Account ID"]),
        "messageId": OOPUUIDAttribute.descriptions(["en":"Message ID"]),
        "customerJourneyId": OOPUUIDAttribute.descriptions(["en":"Customer Journey ID"]),
        "organizationId": OOPUUIDAttribute.descriptions(["en":"Organization ID"]),
        "sendingId": OOPUUIDAttribute.descriptions(["en":"Sending ID"]),
        "blacklistedLink": OOPStringAttribute.descriptions(["en":"Blacklisted link"]),
        "customerJourneyIterationId": OOPUUIDAttribute.descriptions(["en":"Customer journey iteration ID"]),
        "usageType": OOPStringAttribute.descriptions(["en":"Usage type"]),
        "interactionType": OOPStringAttribute.descriptions(["en":"Interaction type"]),
        "timestamp": OOPStringAttribute.descriptions(["en":"Timestamp"]),
        "activityId": OOPUUIDAttribute.descriptions(["en":"Activity ID"]),
      ])
      .registerPath("email_containsblacklistedlinks");
  }
}
mixin(EntityCalls!("EMLContainsBlacklistedLinks"));

unittest {
  version(uim_entities) {
    assert(EMLContainsBlacklistedLinks);
  
  auto entity = EMLContainsBlacklistedLinks;
  // auto repository = OOPFileRepository("./tests");
/* /*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}