-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpgmza-first-run', 'wpgmza_pro_db_version', 'wpgmza-engine-switch-toolbar-dismissed', 'wpgmza_db_version', 'WPGMZA_OTHER_SETTINGS', 'wpgmza_google_maps_api_key', 'wpgmza_xml_location', 'wpgmza_xml_url', 'wpgmza_temp_api', 'wpgmza-installer-initial-procedure', 'wpgmza-installer-paused', 'wpgmza-installer-retrigger-event', 'wpgmza-review-nag-closed', 'wpgmza_welcome_screen_done', 'wpgmza_global_settings', 'wpgmza_last_rest_api_blocked', 'WPGMZA_SETTINGS', 'wpgmza-tour-ftu-complete', 'wpgmza_permission', 'wpgmza_review_nag', 'wpgmza_stats');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wpgmza_hide_chat');
DELETE FROM wp_usermeta WHERE meta_key IN ('wpgmza_hide_chat');
DELETE FROM wp_termmeta WHERE meta_key IN ('wpgmza_hide_chat');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wpgmza_hide_chat');

