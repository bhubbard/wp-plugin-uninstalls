-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpcf7');
DELETE FROM wp_options WHERE option_name LIKE 'smailyforcf7_form_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('smaily_for_cf7_deprecation_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('smaily_for_cf7_deprecation_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('smaily_for_cf7_deprecation_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('smaily_for_cf7_deprecation_notice_dismissed');

