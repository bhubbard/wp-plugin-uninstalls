-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_a_options', 'advancediFrameParameterData', 'advancediFrameAdminOptions', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'aip_discount', 'aip_discount_message', 'aip_version', 'ai_no_rights_post_errors', 'ai_save_post_errors', 'ai_save_post_execution', 'ai_save_post_unfiltered_html', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'aip_%';
DELETE FROM wp_options WHERE option_name LIKE 'aip_cache_check_%';
DELETE FROM wp_options WHERE option_name LIKE 'aip_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('closedpostboxes_toplevel_page_advanced-iframe');
DELETE FROM wp_usermeta WHERE meta_key IN ('closedpostboxes_toplevel_page_advanced-iframe');
DELETE FROM wp_termmeta WHERE meta_key IN ('closedpostboxes_toplevel_page_advanced-iframe');
DELETE FROM wp_commentmeta WHERE meta_key IN ('closedpostboxes_toplevel_page_advanced-iframe');

