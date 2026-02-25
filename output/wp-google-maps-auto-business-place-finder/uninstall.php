<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wgabf_view_on_cat');
delete_site_option('wgabf_view_on_cat');
delete_option('wgabf_view_on_tag');
delete_site_option('wgabf_view_on_tag');
delete_option('wgabf_autocomplete_search');
delete_site_option('wgabf_autocomplete_search');
delete_option('wgabf_place_type');
delete_site_option('wgabf_place_type');
delete_option('wgabf_lat');
delete_site_option('wgabf_lat');
delete_option('wgabf_default_title');
delete_site_option('wgabf_default_title');
delete_option('wgabf_lng');
delete_site_option('wgabf_lng');
delete_option('wgabf_location');
delete_site_option('wgabf_location');
delete_option('wgabf_start_html_tag');
delete_site_option('wgabf_start_html_tag');
delete_option('wgabf_end_html_tag');
delete_site_option('wgabf_end_html_tag');
delete_option('wgabf_title');
delete_site_option('wgabf_title');
delete_option('wgabf_exclude_from_title');
delete_site_option('wgabf_exclude_from_title');

