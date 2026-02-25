-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bsf_usage_last_displayed_time', 'bsf_usage_migrated', 'bsf_analytics_last_displayed_time', 'uabb_hide_branding', 'bsf_force_check_extensions', 'uabb_lite_redirect', '_uabb_lite_journey_details', '_uabb_lite_1_2_4_ver', '_uabb_cloud_templats', '_uabb_enabled_icons', 'bsf_usage_optin', 'uabb_usage_optin', 'bsf_usage_installed_time', 'uabb_usage_installed_time', '_uabb_global_settings', '_uabb_lite_saved_version', '_fl_builder_uabb_cloud_templates', 'allowed_astra_notices', 'bsf_analytics_track', 'bsf_usage_track');
DELETE FROM wp_options WHERE option_name LIKE '%_usage_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin';
DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time';
DELETE FROM wp_options WHERE option_name LIKE '%_usage_installed_time';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('uabb-cta-link', '_uabb_lite_version', '_fl_builder_data', '_fl_builder_data_back', '_fl_builder_draft', '_fl_builder_draft_back', '_uabb_lite_converted');
DELETE FROM wp_usermeta WHERE meta_key IN ('uabb-cta-link', '_uabb_lite_version', '_fl_builder_data', '_fl_builder_data_back', '_fl_builder_draft', '_fl_builder_draft_back', '_uabb_lite_converted');
DELETE FROM wp_termmeta WHERE meta_key IN ('uabb-cta-link', '_uabb_lite_version', '_fl_builder_data', '_fl_builder_data_back', '_fl_builder_draft', '_fl_builder_draft_back', '_uabb_lite_converted');
DELETE FROM wp_commentmeta WHERE meta_key IN ('uabb-cta-link', '_uabb_lite_version', '_fl_builder_data', '_fl_builder_data_back', '_fl_builder_draft', '_fl_builder_draft_back', '_uabb_lite_converted');

