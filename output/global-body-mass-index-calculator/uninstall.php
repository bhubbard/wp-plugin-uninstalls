<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('GBMI_Calc_Widget');
delete_site_option('GBMI_Calc_Widget');
delete_option('title');
delete_site_option('title');

