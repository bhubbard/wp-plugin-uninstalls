-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mailcamp_options_api', 'mailcamp_options_lists', 'mailcamp_options_form', 'mailcamp_options_shortcode', 'mailcamp_options_wc', 'mailcamp_options_wc_fields', 'mailcamp_options', 'mailcamp_options_listids');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wc_signup_checkbox');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wc_signup_checkbox');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wc_signup_checkbox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wc_signup_checkbox');

