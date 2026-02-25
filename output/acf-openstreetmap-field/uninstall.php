<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acf_osm_provider_tokens');
delete_site_option('acf_osm_provider_tokens');
delete_option('acf_osm_providers');
delete_site_option('acf_osm_providers');
delete_option('acf_osm_proxy');
delete_site_option('acf_osm_proxy');
delete_option('acf-openstreetmap-field_version');
delete_site_option('acf-openstreetmap-field_version');

