<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awas_woo_inf_basics');
delete_site_option('awas_woo_inf_basics');
delete_option('awas_woo_inf_color');
delete_site_option('awas_woo_inf_color');

