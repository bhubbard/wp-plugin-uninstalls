-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('__user_setting_access');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('rvx_comment_title', 'rating', 'rvx_comment_order_item', 'verified', 'is_recommended', 'reviewx_attachments', 'rvx_review_version');
DELETE FROM wp_usermeta WHERE meta_key IN ('rvx_comment_title', 'rating', 'rvx_comment_order_item', 'verified', 'is_recommended', 'reviewx_attachments', 'rvx_review_version');
DELETE FROM wp_termmeta WHERE meta_key IN ('rvx_comment_title', 'rating', 'rvx_comment_order_item', 'verified', 'is_recommended', 'reviewx_attachments', 'rvx_review_version');
DELETE FROM wp_commentmeta WHERE meta_key IN ('rvx_comment_title', 'rating', 'rvx_comment_order_item', 'verified', 'is_recommended', 'reviewx_attachments', 'rvx_review_version');

