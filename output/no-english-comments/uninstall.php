<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('no_english_comments_notice');
delete_site_option('no_english_comments_notice');
delete_option('no_english_comments_mode');
delete_site_option('no_english_comments_mode');

