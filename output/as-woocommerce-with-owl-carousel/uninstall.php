<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('as_woo_owl_all_opt_save');
delete_site_option('as_woo_owl_all_opt_save');
delete_option('as_woo_owl_all_settings_save');
delete_site_option('as_woo_owl_all_settings_save');

