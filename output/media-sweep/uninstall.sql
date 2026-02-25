-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mswp_review_notice_dismissed', 'mswp_review_notice_permanent_dismissed', 'mswp_review_notice_first_seen');
DELETE FROM wp_usermeta WHERE meta_key IN ('mswp_review_notice_dismissed', 'mswp_review_notice_permanent_dismissed', 'mswp_review_notice_first_seen');
DELETE FROM wp_termmeta WHERE meta_key IN ('mswp_review_notice_dismissed', 'mswp_review_notice_permanent_dismissed', 'mswp_review_notice_first_seen');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mswp_review_notice_dismissed', 'mswp_review_notice_permanent_dismissed', 'mswp_review_notice_first_seen');

