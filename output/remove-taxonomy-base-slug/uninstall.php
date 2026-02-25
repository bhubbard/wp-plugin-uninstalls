<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('remove_taxonomy_base_slug_settings_what_taxonomies');
delete_site_option('remove_taxonomy_base_slug_settings_what_taxonomies');

