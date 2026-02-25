-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('olgc_notice_dismissed');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('olgc_grade', 'olgc_is_private');
DELETE FROM wp_usermeta WHERE meta_key IN ('olgc_grade', 'olgc_is_private');
DELETE FROM wp_termmeta WHERE meta_key IN ('olgc_grade', 'olgc_is_private');
DELETE FROM wp_commentmeta WHERE meta_key IN ('olgc_grade', 'olgc_is_private');

