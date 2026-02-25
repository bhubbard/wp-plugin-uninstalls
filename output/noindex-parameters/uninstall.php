<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('noindex_parameters_rules');
delete_site_option('noindex_parameters_rules');
delete_option('noindex_parameters_last_updated');
delete_site_option('noindex_parameters_last_updated');
delete_option('noindex_parameters_version');
delete_site_option('noindex_parameters_version');

