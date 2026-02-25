<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lead_captor_popup_options');
delete_site_option('lead_captor_popup_options');
delete_option('lead_captor_behavior_options');
delete_site_option('lead_captor_behavior_options');
delete_option('lead_captor_mailchimp_options');
delete_site_option('lead_captor_mailchimp_options');
delete_option('lead_captor_export_subscribers_options');
delete_site_option('lead_captor_export_subscribers_options');

