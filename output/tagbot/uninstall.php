<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kpe_indexing');
delete_site_option('kpe_indexing');
delete_option('kpe_indexing_settings');
delete_site_option('kpe_indexing_settings');

