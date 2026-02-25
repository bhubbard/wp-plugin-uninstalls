<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woo_autocomplete_placeholder');
delete_site_option('woo_autocomplete_placeholder');
delete_option('woo_submit_placeholder');
delete_site_option('woo_submit_placeholder');
delete_option('autocomplete_categories');
delete_site_option('autocomplete_categories');
delete_option('autocomplete_tags');
delete_site_option('autocomplete_tags');
delete_option('autocomplete_taxonomies');
delete_site_option('autocomplete_taxonomies');
delete_option('woo_custom_taxonomy');
delete_site_option('woo_custom_taxonomy');
delete_option('include_autocomplete_categories');
delete_site_option('include_autocomplete_categories');
delete_option('exclude_autocomplete_categories');
delete_site_option('exclude_autocomplete_categories');
delete_option('include_autocomplete_tags');
delete_site_option('include_autocomplete_tags');
delete_option('exclude_autocomplete_tags');
delete_site_option('exclude_autocomplete_tags');
delete_option('include_autocomplete_taxonomies');
delete_site_option('include_autocomplete_taxonomies');
delete_option('exclude_autocomplete_taxonomies');
delete_site_option('exclude_autocomplete_taxonomies');

