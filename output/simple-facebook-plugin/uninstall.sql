-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sfp_ignore_notice_4');
DELETE FROM wp_usermeta WHERE meta_key IN ('sfp_ignore_notice_4');
DELETE FROM wp_termmeta WHERE meta_key IN ('sfp_ignore_notice_4');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sfp_ignore_notice_4');

