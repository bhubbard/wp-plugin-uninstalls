<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('meta_generator_and_version_info_remover_options');
delete_site_option('meta_generator_and_version_info_remover_options');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

