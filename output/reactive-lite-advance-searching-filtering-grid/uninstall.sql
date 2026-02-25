-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('reactive_settings', '_reactive_geobox_settings', 'webpack_public_path_url', '_reactive_general_settings', 'reactive_selected_template', '_reactive_meta_restrictions', 'reactive_builder_admin_notices');
DELETE FROM wp_options WHERE option_name LIKE 'reactive_builder-%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('reactive_grid_template', '_reactive_geobox_preview', '_reactive_grid_builder_settings', 'address', 'city', 'country', 'country_short_name', 'state', 'state_short_name', 'zipcode', 'latitude', 'longitude', '_reactive_rebuilder_settings', '_wp_attachment_image_alt', 'reactivedata', 'readOnly', 'rebuilder_post_type', 'rebuilder_async', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('reactive_grid_template', '_reactive_geobox_preview', '_reactive_grid_builder_settings', 'address', 'city', 'country', 'country_short_name', 'state', 'state_short_name', 'zipcode', 'latitude', 'longitude', '_reactive_rebuilder_settings', '_wp_attachment_image_alt', 'reactivedata', 'readOnly', 'rebuilder_post_type', 'rebuilder_async', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('reactive_grid_template', '_reactive_geobox_preview', '_reactive_grid_builder_settings', 'address', 'city', 'country', 'country_short_name', 'state', 'state_short_name', 'zipcode', 'latitude', 'longitude', '_reactive_rebuilder_settings', '_wp_attachment_image_alt', 'reactivedata', 'readOnly', 'rebuilder_post_type', 'rebuilder_async', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('reactive_grid_template', '_reactive_geobox_preview', '_reactive_grid_builder_settings', 'address', 'city', 'country', 'country_short_name', 'state', 'state_short_name', 'zipcode', 'latitude', 'longitude', '_reactive_rebuilder_settings', '_wp_attachment_image_alt', 'reactivedata', 'readOnly', 'rebuilder_post_type', 'rebuilder_async', '_menu_item_menu_item_parent', '_thumbnail_id');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'reactivedata_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'reactivedata_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'reactivedata_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'reactivedata_%';

