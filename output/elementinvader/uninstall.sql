-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('elementinvader_allowed_admins', 'elementinvader_api_token', 'elementinvader_reviews_installed_on', 'elementinvader_total_open_count', 'winter_mvc_active_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'eli_export_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementinvader_reviews_dismissed_triggers', '_elementinvader_reviews_last_dismissed', '_elementinvader_reviews_already_did', '_elementor_page_settings', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_elementor_edit_mode', '_elementinvader_reviews_dismissed_triggers', '_elementinvader_reviews_last_dismissed', '_elementinvader_reviews_already_did', '_elementor_page_settings', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementinvader_reviews_dismissed_triggers', '_elementinvader_reviews_last_dismissed', '_elementinvader_reviews_already_did', '_elementor_page_settings', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_elementor_edit_mode', '_elementinvader_reviews_dismissed_triggers', '_elementinvader_reviews_last_dismissed', '_elementinvader_reviews_already_did', '_elementor_page_settings', '_wp_page_template');

