<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('egawp_activated_on');
delete_site_option('egawp_activated_on');
delete_option('egawp_select_type');
delete_site_option('egawp_select_type');
delete_option('egawp_value');
delete_site_option('egawp_value');
delete_option('egawp_deactivated_on');
delete_site_option('egawp_deactivated_on');

