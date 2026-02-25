-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('uact_admin_gmail', 'uact_email_template');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_is_new_post');
DELETE FROM wp_usermeta WHERE meta_key IN ('_is_new_post');
DELETE FROM wp_termmeta WHERE meta_key IN ('_is_new_post');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_is_new_post');

