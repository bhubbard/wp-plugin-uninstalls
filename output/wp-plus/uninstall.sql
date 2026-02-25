-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_plus_jdt', 'wp_plus_glgjt', 'wp_plus_wryh', 'wp_plus_number', 'wp_plus_bingbg', 'wp_plus_welcomemsg', 'wp_plus_codehl', 'wp_plus_gravatar', 'wp_plus_chuser', 'wp_plus_ping', 'wp_plus_nofollow', 'wp_plus_replaceurl', 'wp_plus_simplifyhead', 'wp_plus_ietip', 'wp_plus_linkman', 'wp_plus_jquery', 'wp_plus_copyright', 'wp_plus_copyright_num', 'wp_plus_oldpost', 'wp_plus_oldpost_num', 'wp_plus_disable_emoji', 'wp_plus_ignore_git', 'wp_plus_remove_zh_cn_legacy_option_clean', 'wp_plus_disable_attachment_page', 'wp_plus_google', 'do_activation_redirect');

