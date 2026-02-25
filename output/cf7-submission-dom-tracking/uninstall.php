<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apa_cf7sdomt_pages_with_contact_forms');
delete_site_option('apa_cf7sdomt_pages_with_contact_forms');
delete_option('apa_cf7sdomt_ga_page_view');
delete_site_option('apa_cf7sdomt_ga_page_view');
delete_option('apa_cf7sdomt_ga_event');
delete_site_option('apa_cf7sdomt_ga_event');
delete_option('apa_cf7sdomt_fb_pixel_lead');
delete_site_option('apa_cf7sdomt_fb_pixel_lead');
delete_option('apa_cf7sdomt_ga_page_view_url');
delete_site_option('apa_cf7sdomt_ga_page_view_url');
delete_option('apa_cf7sdomt_ga_event_category');
delete_site_option('apa_cf7sdomt_ga_event_category');
delete_option('apa_cf7sdomt_ga_event_action');
delete_site_option('apa_cf7sdomt_ga_event_action');
delete_option('apa_cf7sdomt_hide_form');
delete_site_option('apa_cf7sdomt_hide_form');
delete_option('apa_cf7sdomt_deregister_styles');
delete_site_option('apa_cf7sdomt_deregister_styles');
delete_option('apa_cf7sdomt_deregister_javascript');
delete_site_option('apa_cf7sdomt_deregister_javascript');

