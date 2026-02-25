<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('YUMPU_API_ACCESS_TOKEN');
delete_site_option('YUMPU_API_ACCESS_TOKEN');

