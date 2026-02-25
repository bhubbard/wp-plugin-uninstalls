<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('visitor_contact_form_id');
delete_site_option('visitor_contact_form_id');
delete_option('visitor_contact_sticky_button');
delete_site_option('visitor_contact_sticky_button');
delete_option('visitor_contact_publish_page');
delete_site_option('visitor_contact_publish_page');
delete_option('visitor_contact_page_id');
delete_site_option('visitor_contact_page_id');

