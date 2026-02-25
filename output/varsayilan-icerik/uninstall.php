<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vi_title_text');
delete_site_option('vi_title_text');
delete_option('vi_title_check');
delete_site_option('vi_title_check');
delete_option('vi_excerpt_text');
delete_site_option('vi_excerpt_text');
delete_option('vi_excerpt_check');
delete_site_option('vi_excerpt_check');
delete_option('vi_content_text');
delete_site_option('vi_content_text');
delete_option('vi_content_check');
delete_site_option('vi_content_check');

