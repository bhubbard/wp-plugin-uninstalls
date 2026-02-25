<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dseburl_hide_icon');
delete_site_option('dseburl_hide_icon');
delete_option('dseburl_url');
delete_site_option('dseburl_url');

