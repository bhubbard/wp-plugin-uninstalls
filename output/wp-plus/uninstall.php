<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_plus_jdt');
delete_site_option('wp_plus_jdt');
delete_option('wp_plus_glgjt');
delete_site_option('wp_plus_glgjt');
delete_option('wp_plus_wryh');
delete_site_option('wp_plus_wryh');
delete_option('wp_plus_number');
delete_site_option('wp_plus_number');
delete_option('wp_plus_bingbg');
delete_site_option('wp_plus_bingbg');
delete_option('wp_plus_welcomemsg');
delete_site_option('wp_plus_welcomemsg');
delete_option('wp_plus_codehl');
delete_site_option('wp_plus_codehl');
delete_option('wp_plus_gravatar');
delete_site_option('wp_plus_gravatar');
delete_option('wp_plus_chuser');
delete_site_option('wp_plus_chuser');
delete_option('wp_plus_ping');
delete_site_option('wp_plus_ping');
delete_option('wp_plus_nofollow');
delete_site_option('wp_plus_nofollow');
delete_option('wp_plus_replaceurl');
delete_site_option('wp_plus_replaceurl');
delete_option('wp_plus_simplifyhead');
delete_site_option('wp_plus_simplifyhead');
delete_option('wp_plus_ietip');
delete_site_option('wp_plus_ietip');
delete_option('wp_plus_linkman');
delete_site_option('wp_plus_linkman');
delete_option('wp_plus_jquery');
delete_site_option('wp_plus_jquery');
delete_option('wp_plus_copyright');
delete_site_option('wp_plus_copyright');
delete_option('wp_plus_copyright_num');
delete_site_option('wp_plus_copyright_num');
delete_option('wp_plus_oldpost');
delete_site_option('wp_plus_oldpost');
delete_option('wp_plus_oldpost_num');
delete_site_option('wp_plus_oldpost_num');
delete_option('wp_plus_disable_emoji');
delete_site_option('wp_plus_disable_emoji');
delete_option('wp_plus_ignore_git');
delete_site_option('wp_plus_ignore_git');
delete_option('wp_plus_remove_zh_cn_legacy_option_clean');
delete_site_option('wp_plus_remove_zh_cn_legacy_option_clean');
delete_option('wp_plus_disable_attachment_page');
delete_site_option('wp_plus_disable_attachment_page');
delete_option('wp_plus_google');
delete_site_option('wp_plus_google');
delete_option('do_activation_redirect');
delete_site_option('do_activation_redirect');

