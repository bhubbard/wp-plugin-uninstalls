-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vsfw_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('vsfw_review_notice_dismissed', 'vsfw_review_notice_permanent_dismissed', 'vsfw_review_notice_first_seen');
DELETE FROM wp_usermeta WHERE meta_key IN ('vsfw_review_notice_dismissed', 'vsfw_review_notice_permanent_dismissed', 'vsfw_review_notice_first_seen');
DELETE FROM wp_termmeta WHERE meta_key IN ('vsfw_review_notice_dismissed', 'vsfw_review_notice_permanent_dismissed', 'vsfw_review_notice_first_seen');
DELETE FROM wp_commentmeta WHERE meta_key IN ('vsfw_review_notice_dismissed', 'vsfw_review_notice_permanent_dismissed', 'vsfw_review_notice_first_seen');

