<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abh_field');
delete_site_option('abh_field');
delete_option('abh_opti');
delete_site_option('abh_opti');
delete_option('abh_status');
delete_site_option('abh_status');

