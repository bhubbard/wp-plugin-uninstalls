-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wde_disabled_widgets', 'fs_debug_mode', '_transient_timeout_fs_snooze_period', '_site_transient_timeout_fs_snooze_period', 'active_sitewide_plugins', 'fs_storage_logger', 'fs_active_plugins', 'widget_detector_elementor_reviews_installed_on', 'widget_detector_elementor_total_open_count', 'wde_editor_hover', 'recently_activated', 'winter_mvc_active_plugins', 'fs_snooze_period', 'update_plugins', '_fs_api_connection_retry_counter', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%editor_hover';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_data', '_widget_detector_elementor_reviews_dismissed_triggers', '_widget_detector_elementor_reviews_last_dismissed', '_widget_detector_elementor_reviews_already_did');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_data', '_widget_detector_elementor_reviews_dismissed_triggers', '_widget_detector_elementor_reviews_last_dismissed', '_widget_detector_elementor_reviews_already_did');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_data', '_widget_detector_elementor_reviews_dismissed_triggers', '_widget_detector_elementor_reviews_last_dismissed', '_widget_detector_elementor_reviews_already_did');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_data', '_widget_detector_elementor_reviews_dismissed_triggers', '_widget_detector_elementor_reviews_last_dismissed', '_widget_detector_elementor_reviews_already_did');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

