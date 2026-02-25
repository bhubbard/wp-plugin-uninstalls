<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lttp_show_default');
delete_site_option('lttp_show_default');
delete_option('lttp_where_to_show');
delete_site_option('lttp_where_to_show');

