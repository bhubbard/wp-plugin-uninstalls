-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hustle_version', 'hustle_migrations', 'hustle_previous_version', 'hustle_free_deactivated', 'hustle_free_activated', 'wdp_un_profile_data', 'hustle_provider_aweber_settings', 'hustle_provider_infusionsoft_settings', 'hustle_custom_palettes', 'hustle-hide_tutorials', 'yith_wcfm_main_page_id', 'hustle_unsubscribe_page', 'hustle_color_index', 'hustle_database_version', 'hustle_unsubscribe_nonces', 'hustle_30_migration_data', 'hustle_settings', 'hustle_ss_refresh_counters', 'wpoi-county-id-map', 'hustle_custom_nonce', 'hustle_activated_flag', 'hustle_new_welcome_notice_dismissed', 'hustle_popup_migrated', 'hustle_global_unsubscription_settings', 'hustle_global_email_settings', 'widget_hustle_module_widget', 'opt_in_database_version', 'hustle_notice_stop_support_m2', 'hustle_activated_providers', 'hustle_opt-in-constant_contact-token', 'hustle_provider_sendinblue_settings', 'hustle_provider_sendinblue_version', 'hustle_40_migration_offset', 'hustle_430_migration_offset', 'hustle_430_modules_to_migrate', 'hustle_441_migration_offset', 'wdev-frash', 'hustle_wp_widget_daily_stats_7', 'hustle_wp_widget_daily_stats_30', 'hustle_wp_widget_daily_stats_90', 'hustle_aweber_code_verifier', 'hustle_constantcontact_auth_keys');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'dismissed_wp_pointers');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt', 'dismissed_wp_pointers');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'dismissed_wp_pointers');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt', 'dismissed_wp_pointers');

