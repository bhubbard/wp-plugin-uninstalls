<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spai_table_posts_data_sync_version');
delete_site_option('spai_table_posts_data_sync_version');
delete_option('spai');
delete_site_option('spai');

