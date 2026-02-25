-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('jmgdpr_show_cookie_message', 'jmgdpr_cookie_message', 'jmgdpr_cookie_link_text', 'jmgdpr_cookie_link_href', 'jmgdpr_cookie_ok_text', 'jmgdpr_privacy_checkbox_label', 'jmgdpr_privacy_policy_link', 'jmgdpr_show_privacy_checkbox');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('jmgdpr_privacy_policy');
DELETE FROM wp_usermeta WHERE meta_key IN ('jmgdpr_privacy_policy');
DELETE FROM wp_termmeta WHERE meta_key IN ('jmgdpr_privacy_policy');
DELETE FROM wp_commentmeta WHERE meta_key IN ('jmgdpr_privacy_policy');

