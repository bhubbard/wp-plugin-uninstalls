<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('seznam_webmaster');
delete_site_option('seznam_webmaster');
delete_option('seznam_webmaster_reindex_data');
delete_site_option('seznam_webmaster_reindex_data');

