<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('enquiry_woo_tab_priority_field');
delete_site_option('enquiry_woo_tab_priority_field');
delete_option('enquiry_woo_form_selection_field');
delete_site_option('enquiry_woo_form_selection_field');

