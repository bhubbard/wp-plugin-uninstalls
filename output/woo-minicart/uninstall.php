<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wmc_options');
delete_site_option('wmc_options');
delete_option('wmc_pro_options');
delete_site_option('wmc_pro_options');

