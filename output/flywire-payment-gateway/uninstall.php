<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pay_with_flywire__page_id');
delete_site_option('pay_with_flywire__page_id');

