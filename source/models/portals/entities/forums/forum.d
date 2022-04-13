module models.portals.entities.forums.forum;

@safe:
import models.portals;

// 
class DPortalForum : DOOPEntity {
  mixin(OOPEntityThis!("PortalForum"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who created the record on behalf of another user. "]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Shows who last updated the record on behalf of another user."]),
        "overriddenCreatedOn": OOPTimestampAttribute.descriptions(["en":"Date and time that the record was migrated."]),
        "importSequenceNumber": OOPNumberAttribute.descriptions(["en":"Sequence number of the import that created this record."]),
        "ownerId": OOPUUIDAttribute.descriptions(["en":"Owner Id"]),
        "ownerIdType": OOPStringAttribute.descriptions(["en":"The type of owner, either User or Team."]),
        "owningBusinessUnitId": OOPLinkAttribute("aplBusinessUnit").descriptions(["en":"Unique identifier for the business unit that owns the record"]),
        "owningUserId": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the user that owns the activity."]),
        "owningTeamId": OOPLinkAttribute("aplTeam").descriptions(["en":"Unique identifier for the team that owns the record."]),
        "timeZoneRuleVersionNumber": OOPNumberAttribute.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPStringAttribute.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "communityForumId": OOPUUIDAttribute.descriptions(["en":"Shows the entity instances."]),
        "stateCode": OOPStringAttribute.descriptions(["en":"Status of the Forum"]),
        "stateCode_display": OOPStringAttribute.descriptions(["en":""]),
        "statusCode": OOPStringAttribute.descriptions(["en":"Select the forum's status."]),
        "statusCode_display": OOPStringAttribute.descriptions(["en":""]),
        "displayOrder": OOPStringAttribute.descriptions(["en":""]),
        "enableQueuedPosts": OOPStringAttribute.descriptions(["en":"Automatically put posts in a queue awaiting a moderator to approve"]),
        "forumPageTemplateID": OOPStringAttribute.descriptions(["en":"Shows the Page Template associated with the forum."]),
        "hiddenFromSitemap": OOPStringAttribute.descriptions(["en":""]),
        "lastPostID": OOPStringAttribute.descriptions(["en":"Shows the forum post associated with the forum."]),
        "parentPageID": OOPStringAttribute.descriptions(["en":"Shows the webpage associated with the forum."]),
        "partialUrl": OOPUrlAttribute.descriptions(["en":""]),
        "postCount": OOPStringAttribute.descriptions(["en":""]),
        "publishingStateID": OOPStringAttribute.descriptions(["en":"Shows the Publishing State associated with the forum."]),
        "threadCount": OOPStringAttribute.descriptions(["en":""]),
        "threadPageTemplateID": OOPStringAttribute.descriptions(["en":"Shows the Page Template associated with the forum."]),
        "websiteId": OOPUUIDAttribute.descriptions(["en":"Shows the Website associated with the forum."]),
        "forumLanguageId": OOPUUIDAttribute.descriptions(["en":"Option to make forums and forum posts language specific"]),
      ])
      .registerPath("portal_forums");    
  }
}
mixin(OOPEntityCalls!("PortalForum"));

version(test_model_portals) {
  unittest {
    assert(PortalForum);
  
  auto entity = PortalForum;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}