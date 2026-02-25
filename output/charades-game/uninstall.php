<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('charades_categories_combined');
delete_site_option('charades_categories_combined');
delete_option('charades_words');
delete_site_option('charades_words');
delete_option('charades_custom_texts');
delete_site_option('charades_custom_texts');

