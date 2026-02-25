<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('forbidden_words');
delete_site_option('forbidden_words');
delete_option('forbidden_title');
delete_site_option('forbidden_title');
delete_option('forbidden_content');
delete_site_option('forbidden_content');
delete_option('forbidden_notice');
delete_site_option('forbidden_notice');

