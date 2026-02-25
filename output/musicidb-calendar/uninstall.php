<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('musicidb_options');
delete_site_option('musicidb_options');

// Delete Transients
delete_transient('musicidb_integration_entity_responses');
delete_site_transient('musicidb_integration_entity_responses');

