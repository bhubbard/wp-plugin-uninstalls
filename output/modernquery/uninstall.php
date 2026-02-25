<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('modernquery_boost_field_name');
delete_site_option('modernquery_boost_field_name');
delete_option('modernquery_domain_name');
delete_site_option('modernquery_domain_name');
delete_option('modernquery_property_key');
delete_site_option('modernquery_property_key');
delete_option('modernquery_search_input_selector');
delete_site_option('modernquery_search_input_selector');

