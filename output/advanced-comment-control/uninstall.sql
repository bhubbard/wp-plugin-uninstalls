-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('advanced-comment-control');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_disable_advanced_comment_control_user_role_rules', '_disable_advanced_comment_control_post_rules');
DELETE FROM wp_usermeta WHERE meta_key IN ('_disable_advanced_comment_control_user_role_rules', '_disable_advanced_comment_control_post_rules');
DELETE FROM wp_termmeta WHERE meta_key IN ('_disable_advanced_comment_control_user_role_rules', '_disable_advanced_comment_control_post_rules');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_disable_advanced_comment_control_user_role_rules', '_disable_advanced_comment_control_post_rules');

