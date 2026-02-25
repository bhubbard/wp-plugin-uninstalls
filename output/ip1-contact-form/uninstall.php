<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ip1_contact_form_header');
delete_site_option('ip1_contact_form_header');
delete_option('ip1_contact_form_submit_text');
delete_site_option('ip1_contact_form_submit_text');
delete_option('ip1_contact_form_default_properties');
delete_site_option('ip1_contact_form_default_properties');
delete_option('ip1_contact_form_properties');
delete_site_option('ip1_contact_form_properties');
delete_option('ip1_contact_form_labels_header');
delete_site_option('ip1_contact_form_labels_header');
delete_option('ip1_contact_form_option_labels');
delete_site_option('ip1_contact_form_option_labels');
delete_option('ip1_contact_form_token');
delete_site_option('ip1_contact_form_token');
delete_option('ip1_contact_form_default_labels');
delete_site_option('ip1_contact_form_default_labels');

