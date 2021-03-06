module models.portals.attributes.uuids.entities.web.site;

@safe:
import models.portals;

class DWebSiteIdAttribute : DEntityIdAttribute {
  mixin(AttributeThis!("WebSiteIdAttribute"));

  override void initialize() {
    super.initialize;

    this
      .name("webSiteId")
      .registerPath("webSiteId");
  }  

  
}
mixin(AttributeCalls!("WebSiteIdAttribute"));

version(test_model_portals) {
  unittest {
    testAttribute(new DWebSiteIdAttribute);
    testAttribute(WebSiteIdAttribute);
  }
}