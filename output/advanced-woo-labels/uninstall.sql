-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('awl_settings', 'active_sitewide_plugins', 'qtranslate_enabled_languages', 'awl_plugin_ver');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_awl_label', '_awl_label_priority', '_product_image_gallery', '_et_pb_use_builder', '_awl_disable_labels', 'total_sales');
DELETE FROM wp_usermeta WHERE meta_key IN ('_awl_label', '_awl_label_priority', '_product_image_gallery', '_et_pb_use_builder', '_awl_disable_labels', 'total_sales');
DELETE FROM wp_termmeta WHERE meta_key IN ('_awl_label', '_awl_label_priority', '_product_image_gallery', '_et_pb_use_builder', '_awl_disable_labels', 'total_sales');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_awl_label', '_awl_label_priority', '_product_image_gallery', '_et_pb_use_builder', '_awl_disable_labels', 'total_sales');

