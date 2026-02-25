-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('i4t3_gnrl_options', 'i4t3_version_no', 'i4t3_review_notice', 'i4t3_db_version');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('i4t3_review_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('i4t3_review_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('i4t3_review_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('i4t3_review_notice_dismissed');

