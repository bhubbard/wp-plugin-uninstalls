-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jltma_mcb_activation_time', 'recently_activated', 'jltma_mcb', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'jltma_mcb_3_2_4_data_updated', 'update_plugins', 'fs_snooze_period', '_fs_api_connection_retry_counter', 'update_themes');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_page_settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_page_settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_page_settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_page_settings');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

