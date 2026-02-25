-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sfwf_licenses', 'active_sitewide_plugins', 'sfwf_reviews_installed_on', 'sfwf_ultimate_settings', 'sfwf_select_form_id', 'sfwf_general_settings', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%';
DELETE FROM wp_options WHERE option_name LIKE 'sfwf_form_id_%';
DELETE FROM wp_options WHERE option_name LIKE 'sfwf_general_settings%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_sfwf_reviews_dismissed_triggers', '_sfwf_reviews_last_dismissed', '_sfwf_reviews_already_did');
DELETE FROM wp_usermeta WHERE meta_key IN ('_sfwf_reviews_dismissed_triggers', '_sfwf_reviews_last_dismissed', '_sfwf_reviews_already_did');
DELETE FROM wp_termmeta WHERE meta_key IN ('_sfwf_reviews_dismissed_triggers', '_sfwf_reviews_last_dismissed', '_sfwf_reviews_already_did');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_sfwf_reviews_dismissed_triggers', '_sfwf_reviews_last_dismissed', '_sfwf_reviews_already_did');

