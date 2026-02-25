-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('nimble_version', 'nimble_version_upgraded_from', 'nimble_started_with_version', 'nimble_start_date', 'nimble_last_update_notice', 'active_sitewide_plugins', 'nimble_api_news_data', '__nimble_options__', 'nb_prebuild_section_json', 'wp_rocket_settings', 'started_using_hueman');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('dismissed_wp_pointers', '_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('dismissed_wp_pointers', '_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('dismissed_wp_pointers', '_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('dismissed_wp_pointers', '_wp_attachment_image_alt');

