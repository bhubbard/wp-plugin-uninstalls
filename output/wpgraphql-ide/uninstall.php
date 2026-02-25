<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpgraphql_ide_capabilities');
delete_site_option('wpgraphql_ide_capabilities');
delete_option('graphql_ide_settings');
delete_site_option('graphql_ide_settings');

