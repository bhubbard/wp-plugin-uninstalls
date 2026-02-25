<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('relevanssi_min_word_length');
delete_site_option('relevanssi_min_word_length');
delete_option('relevanssi_live_search_last_update');
delete_site_option('relevanssi_live_search_last_update');
delete_option('relevanssi_live_search_version');
delete_site_option('relevanssi_live_search_version');

