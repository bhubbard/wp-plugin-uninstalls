<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('buzzgrid_status');
delete_site_option('buzzgrid_status');
delete_option('buzzgrid_script_url');
delete_site_option('buzzgrid_script_url');
delete_option('buzzgrid_site_url');
delete_site_option('buzzgrid_site_url');
delete_option('buzzgrid_access_token');
delete_site_option('buzzgrid_access_token');

