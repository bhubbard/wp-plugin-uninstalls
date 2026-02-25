<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cw_activation_time');
delete_site_option('cw_activation_time');
delete_option('cwrn_dismiss');
delete_site_option('cwrn_dismiss');
delete_option('cwrn_show_later');
delete_site_option('cwrn_show_later');
delete_option('satc_dismiss');
delete_site_option('satc_dismiss');

