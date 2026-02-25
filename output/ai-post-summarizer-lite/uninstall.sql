-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('aips_lite_options', 'aips_lite_deactivated_due_to_pro', 'aips_lite_pro_active_notice');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('aips_lite_review_notice_dismissed', 'aips_lite_pro_notice_dismissed');
DELETE FROM wp_usermeta WHERE meta_key IN ('aips_lite_review_notice_dismissed', 'aips_lite_pro_notice_dismissed');
DELETE FROM wp_termmeta WHERE meta_key IN ('aips_lite_review_notice_dismissed', 'aips_lite_pro_notice_dismissed');
DELETE FROM wp_commentmeta WHERE meta_key IN ('aips_lite_review_notice_dismissed', 'aips_lite_pro_notice_dismissed');

