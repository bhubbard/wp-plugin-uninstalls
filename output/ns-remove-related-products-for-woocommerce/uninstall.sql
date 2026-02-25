-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rrpw_reviews_installed_on', 'rrpw_total_open_count', 'ns_code_js_to_add_fb_pixel', 'rrp_enabled_plugin');
DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%';
DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_rrpw_reviews_dismissed_triggers', '_rrpw_reviews_last_dismissed', '_rrpw_reviews_already_did');
DELETE FROM wp_usermeta WHERE meta_key IN ('_rrpw_reviews_dismissed_triggers', '_rrpw_reviews_last_dismissed', '_rrpw_reviews_already_did');
DELETE FROM wp_termmeta WHERE meta_key IN ('_rrpw_reviews_dismissed_triggers', '_rrpw_reviews_last_dismissed', '_rrpw_reviews_already_did');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_rrpw_reviews_dismissed_triggers', '_rrpw_reviews_last_dismissed', '_rrpw_reviews_already_did');

