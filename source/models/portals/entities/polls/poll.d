module models.portals.entities.polls.poll;

@safe:
import models.portals;

// The root entity for portal Ideas.
class DPortalPollEntity : DOOPEntity {
  mixin(EntityThis!("PortalPollEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        OwnerIdAttributeClass, // 
        StateCodeAttributeClass, // Status of the Poll
        StatusCodeAttributeClass, // Select the poll's status.
      ])
      .addValues([
        "createdOnBehalfBy": UUIDAttributeClass, // Shows who created the record on behalf of another user. "]),
        "modifiedOnBehalfBy": UUIDAttributeClass, // Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": TimestampAttributeClass, // Date and time that the record was migrated."]),
        "importSequenceNumber": NumberAttributeClass, //Sequence number of the import that created this record."]),
        "ownerIdType": StringAttributeClass, // The type of owner, either User or Team."]),
        "owningBusinessUnitId": UUIDAttributeClass, // Unique identifier for the business unit that owns the record"]),
        "owningUserId": UUIDAttributeClass, // Unique identifier of the user that owns the activity."]),
        "owningTeamId": TeamIdAttributeClass, // , // Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": NumberAttributeClass, //For internal use only."]),
        "utcConversionTimeZoneCode": StringAttributeClass, // Time zone code that was in use when the record was created."]),
        "pollId": UUIDAttributeClass, // Shows the entity instance."]),
        "active": StringAttributeClass, // 
        "closeVotingDate": DateAttributeClass, // 
        "expirationDate": DateAttributeClass, // 
        "question": StringAttributeClass, // 
        "releaseDate": DateAttributeClass, // 
        "submitButtonLabel": StringAttributeClass, // 
        "websiteId": UUIDAttributeClass, // Unique identifier for Website associated with Poll."]),
        "webTemplateId": UUIDAttributeClass, // Unique identifier for Web Template associated with Poll."]),
      ])
      .registerPath("portal_polls");   
  }
}
mixin(EntityCalls!("PortalPollEntity"));

version(test_model_portals) {
  unittest {
    assert(PortalPollEntity);
  
  auto entity = PortalPollEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}