-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pgc_sgb_album_shc_preset', 'pgc_sgb_galleries_base', 'pgc_sgb_archive_galleries_base', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'pgc_sgb_global_lightbox_use', 'pgc_sgb_tags_list', 'pgc_sgb_version', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_pgc_preset_slug', '_pgc_preset_data', '_wp_attachment_image_alt', 'pgc_sgb_tag', 'pgc_sgb_lightbox_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_pgc_preset_slug', '_pgc_preset_data', '_wp_attachment_image_alt', 'pgc_sgb_tag', 'pgc_sgb_lightbox_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_pgc_preset_slug', '_pgc_preset_data', '_wp_attachment_image_alt', 'pgc_sgb_tag', 'pgc_sgb_lightbox_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_pgc_preset_slug', '_pgc_preset_data', '_wp_attachment_image_alt', 'pgc_sgb_tag', 'pgc_sgb_lightbox_settings');

