-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dn_cookie_notice_settings');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_dn_lang_parent', 'notice', 'button');
DELETE FROM wp_usermeta WHERE meta_key IN ('_dn_lang_parent', 'notice', 'button');
DELETE FROM wp_termmeta WHERE meta_key IN ('_dn_lang_parent', 'notice', 'button');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_dn_lang_parent', 'notice', 'button');

