<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tpiw_dollar_value');
delete_site_option('tpiw_dollar_value');
delete_option('tpiw_cent_value');
delete_site_option('tpiw_cent_value');

