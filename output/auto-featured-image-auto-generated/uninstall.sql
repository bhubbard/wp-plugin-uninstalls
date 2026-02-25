-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('atfit_settings', 'atfit_images_generated', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('atfit_source', 'atfit_custom_id', 'atfit_prompt', 'atfit_use_as_layer_back', 'atfit_use_as_layer_front', 'atfit_disable', 'atfit_plugin', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('atfit_source', 'atfit_custom_id', 'atfit_prompt', 'atfit_use_as_layer_back', 'atfit_use_as_layer_front', 'atfit_disable', 'atfit_plugin', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('atfit_source', 'atfit_custom_id', 'atfit_prompt', 'atfit_use_as_layer_back', 'atfit_use_as_layer_front', 'atfit_disable', 'atfit_plugin', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('atfit_source', 'atfit_custom_id', 'atfit_prompt', 'atfit_use_as_layer_back', 'atfit_use_as_layer_front', 'atfit_disable', 'atfit_plugin', '_wp_attachment_image_alt');

