-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gmediaDbVersion', 'gmediaInstallDate', 'gmedia_ajax_long_operations', 'gmediaOptions', 'GmediaHashID_salt', 'gmediaInitCheck', 'gmediaActivated', 'gmediaVersion', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'gmediaUpgrade', 'gmediaHeavyJob', 'gmedia_new_gallery_id', 'gmedia_action_msg', 'gmedia_action_error', 'gmedia_new_preset_id', 'gmedia_module_deleted', 'gmediaUpgradeSteps', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'gm_cache_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('gm_screen_options', '_gmedia_image_id', '_thumbnail_id', '_gmedia_ID', '_gmedia_term_ID', '_related_gmedia', '_related_gmedia_per_page');
DELETE FROM wp_usermeta WHERE meta_key IN ('gm_screen_options', '_gmedia_image_id', '_thumbnail_id', '_gmedia_ID', '_gmedia_term_ID', '_related_gmedia', '_related_gmedia_per_page');
DELETE FROM wp_termmeta WHERE meta_key IN ('gm_screen_options', '_gmedia_image_id', '_thumbnail_id', '_gmedia_ID', '_gmedia_term_ID', '_related_gmedia', '_related_gmedia_per_page');
DELETE FROM wp_commentmeta WHERE meta_key IN ('gm_screen_options', '_gmedia_image_id', '_thumbnail_id', '_gmedia_ID', '_gmedia_term_ID', '_related_gmedia', '_related_gmedia_per_page');

