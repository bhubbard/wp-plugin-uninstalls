<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woocomerce_show_hyba_info');
delete_site_option('woocomerce_show_hyba_info');
delete_option('woocomerce_show_hyba_info_position');
delete_site_option('woocomerce_show_hyba_info_position');

