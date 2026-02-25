<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('post_analyzer_word');
delete_site_option('post_analyzer_word');
delete_option('post_analyzer_img');
delete_site_option('post_analyzer_img');
delete_option('post_analyzer_head');
delete_site_option('post_analyzer_head');
delete_option('post_analyzer_para');
delete_site_option('post_analyzer_para');
delete_option('post_analyzer_date');
delete_site_option('post_analyzer_date');

