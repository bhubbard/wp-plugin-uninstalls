<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_markdown_editor_update_notice_interval');
delete_site_option('wp_markdown_editor_update_notice_interval');
delete_option('dark_mode_version');
delete_site_option('dark_mode_version');
delete_option('dark_mode_install_time');
delete_site_option('dark_mode_install_time');
delete_option('wpmde_general');
delete_site_option('wpmde_general');

// Delete Transients
delete_transient('wp_markdown_editor_review_notice_interval');
delete_site_transient('wp_markdown_editor_review_notice_interval');
delete_transient('wp_markdown_editor_affiliate_notice_interval');
delete_site_transient('wp_markdown_editor_affiliate_notice_interval');

