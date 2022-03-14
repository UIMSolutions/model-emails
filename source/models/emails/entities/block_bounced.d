module models.emails.block_bounced;

@safe:
import models.emails;

class DEMLBlockBounced : DOOPEntity {
  mixin(OOPEntityThis!("EMLBlockBounced"));
  
  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "interactionId": OOPAttributeUUID.descriptions(["en":"Unique identifier of the interaction."]),
        "contactId": OOPAttributeLink("aplContact").descriptions(["en":"Contact ID"]),
        "accountId": OOPAttributeLink("aplAccount").descriptions(["en":"Account ID"]),
        "messageId": OOPAttributeUUID.descriptions(["en":"Message ID"]),
        "customerJourneyId": OOPAttributeUUID.descriptions(["en":"Customer Journey ID"]),
        "organizationId": OOPAttributeLink("aplOrganization").descriptions(["en":"Organization ID"]),
        "sendingId": OOPAttributeUUID.descriptions(["en":"Sending ID"]),
        "customerJourneyIterationId": OOPAttributeUUID.descriptions(["en":"Customer journey iteration ID"]),
        "usageType": OOPAttributeString.descriptions(["en":"Usage type"]),
        "interactionType": OOPAttributeString.descriptions(["en":"Interaction type"]),
        "timestamp": OOPAttributeString.descriptions(["en":"Timestamp"]),
        "bounceCategory": OOPAttributeString.descriptions(["en":"Bounce category"]),
        "activityId": OOPAttributeLink("aplActivity").descriptions(["en":"Activity ID"]),
      ])
      .registerPath("apl_positions");
  }
}
mixin(OOPEntityCalls!("EMLBlockBounced"));

unittest {
  version(uim_entities) {
    assert(EMLBlockBounced);
  
  auto entity = EMLBlockBounced;
  
/*   // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */ 
  }
}