-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('userdeck');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('userdeck_guides_key', 'userdeck_account_key', 'userdeck_mailbox_id');
DELETE FROM wp_usermeta WHERE meta_key IN ('userdeck_guides_key', 'userdeck_account_key', 'userdeck_mailbox_id');
DELETE FROM wp_termmeta WHERE meta_key IN ('userdeck_guides_key', 'userdeck_account_key', 'userdeck_mailbox_id');
DELETE FROM wp_commentmeta WHERE meta_key IN ('userdeck_guides_key', 'userdeck_account_key', 'userdeck_mailbox_id');

