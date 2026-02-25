<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('footerize_pre_content');
delete_site_option('footerize_pre_content');
delete_option('footerize_pre_content_posts');
delete_site_option('footerize_pre_content_posts');
delete_option('footerize_pre_content_pages');
delete_site_option('footerize_pre_content_pages');
delete_option('footerize_exclude_from_pre');
delete_site_option('footerize_exclude_from_pre');
delete_option('footerize_pos_content');
delete_site_option('footerize_pos_content');
delete_option('footerize_pos_content_posts');
delete_site_option('footerize_pos_content_posts');
delete_option('footerize_pos_content_pages');
delete_site_option('footerize_pos_content_pages');
delete_option('footerize_exclude_from_pos');
delete_site_option('footerize_exclude_from_pos');
delete_option('footerize_shortcode_content');
delete_site_option('footerize_shortcode_content');

