<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tgentg_main_options');
delete_site_option('tgentg_main_options');
delete_option('tgentg_generator_options');
delete_site_option('tgentg_generator_options');
delete_option('tgentg_cleanupfilter_options');
delete_site_option('tgentg_cleanupfilter_options');

