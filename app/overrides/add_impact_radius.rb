Deface::Override.new(:virtual_path => 'spree/orders/show',
  :name => 'add_impact_radius',
  :insert_after => "fieldset#order_summary",
  :original => '71d94e7aaf1e24a20a860a1315e209499d0bfb2e',
  :partial => "partials/impact_radius"
)