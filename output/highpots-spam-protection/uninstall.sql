-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('settings_errors');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('hpsp_salt_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('hpsp_salt_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('hpsp_salt_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('hpsp_salt_notice_dismissed');

