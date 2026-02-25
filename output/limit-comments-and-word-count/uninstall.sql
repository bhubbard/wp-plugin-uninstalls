-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lpwc_comment_rules', 'lpwc_show_comment_rules', 'lpwc_info', 'lpwc_display_feature_notification', 'lpwc', 'lpwc_disable_flood_protection', 'lpwc_allow_duplicate_comments', 'lpwc_global_max_comments', 'rules', 'lpwc_user_reviewed', 'lpwc_nag_dismissed_time', 'lpwc_show_notification', 'lpwc_install_time');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('lpwc_last_update', '_exclude_comments_limit');
DELETE FROM wp_usermeta WHERE meta_key IN ('lpwc_last_update', '_exclude_comments_limit');
DELETE FROM wp_termmeta WHERE meta_key IN ('lpwc_last_update', '_exclude_comments_limit');
DELETE FROM wp_commentmeta WHERE meta_key IN ('lpwc_last_update', '_exclude_comments_limit');

