<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('consolto_script');
delete_site_option('consolto_script');
delete_option('etwp_my_option_key');
delete_site_option('etwp_my_option_key');

