<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bmltwf_bmlt_server_address');
delete_site_option('bmltwf_bmlt_server_address');
delete_option('bmltwf_bmlt_username');
delete_site_option('bmltwf_bmlt_username');
delete_option('bmltwf_bmlt_test_status');
delete_site_option('bmltwf_bmlt_test_status');
delete_option('bmltwf_required_meeting_formats');
delete_site_option('bmltwf_required_meeting_formats');
delete_option('bmltwf_optional_location_sub_province_displayname');
delete_site_option('bmltwf_optional_location_sub_province_displayname');
delete_option('bmltwf_optional_location_province_displayname');
delete_site_option('bmltwf_optional_location_province_displayname');
delete_option('bmltwf_optional_postcode_displayname');
delete_site_option('bmltwf_optional_postcode_displayname');
delete_option('bmltwf_optional_location_nation_displayname');
delete_site_option('bmltwf_optional_location_nation_displayname');
delete_option('bmltwf_correspondence_page');
delete_site_option('bmltwf_correspondence_page');
delete_option('bmltwf_enable_debug');
delete_site_option('bmltwf_enable_debug');
delete_option('bmltwf_db_version');
delete_site_option('bmltwf_db_version');
delete_option('bmltwf_optional_location_nation');
delete_site_option('bmltwf_optional_location_nation');
delete_option('bmltwf_optional_location_sub_province');
delete_site_option('bmltwf_optional_location_sub_province');
delete_option('bmltwf_optional_location_province');
delete_site_option('bmltwf_optional_location_province');
delete_option('bmltwf_optional_postcode');
delete_site_option('bmltwf_optional_postcode');
delete_option('bmltwf_fso_feature');
delete_site_option('bmltwf_fso_feature');
delete_option('bmltwf_meeting_sort_order');
delete_site_option('bmltwf_meeting_sort_order');
delete_option('bmltwf_google_maps_key');
delete_site_option('bmltwf_google_maps_key');
delete_option('bmltwf_remove_virtual_meeting_details_on_venue_change');
delete_site_option('bmltwf_remove_virtual_meeting_details_on_venue_change');
delete_option('bmltwf_delete_closed_meetings');
delete_site_option('bmltwf_delete_closed_meetings');
delete_option('bmltwf_trusted_servants_can_delete_submissions');
delete_site_option('bmltwf_trusted_servants_can_delete_submissions');
delete_option('bmltwf_email_from_address');
delete_site_option('bmltwf_email_from_address');
delete_option('bmltwf_submitter_email_template');
delete_site_option('bmltwf_submitter_email_template');
delete_option('bmltwf_submitter_email_subject');
delete_site_option('bmltwf_submitter_email_subject');
delete_option('bmltwf_fso_email_template');
delete_site_option('bmltwf_fso_email_template');
delete_option('bmltwf_fso_email_subject');
delete_site_option('bmltwf_fso_email_subject');
delete_option('bmltwf_fso_email_address');
delete_site_option('bmltwf_fso_email_address');
delete_option('bmltwf_correspondence_submitter_email_template');
delete_site_option('bmltwf_correspondence_submitter_email_template');
delete_option('bmltwf_correspondence_submitter_email_subject');
delete_site_option('bmltwf_correspondence_submitter_email_subject');
delete_option('bmltwf_correspondence_admin_email_template');
delete_site_option('bmltwf_correspondence_admin_email_template');
delete_option('bmltwf_correspondence_admin_email_subject');
delete_site_option('bmltwf_correspondence_admin_email_subject');
delete_option('bmltwf_admin_notification_email_template');
delete_site_option('bmltwf_admin_notification_email_template');
delete_option('bmltwf_admin_notification_email_subject');
delete_site_option('bmltwf_admin_notification_email_subject');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", '%_displayname' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('bmltwf_bmlt_google_maps_key');
delete_site_option('bmltwf_bmlt_google_maps_key');
delete_option('bmltwf_bmlt_password');
delete_site_option('bmltwf_bmlt_password');
delete_option('bmltwf_approval_email_subject');
delete_site_option('bmltwf_approval_email_subject');
delete_option('bmltwf_approval_email_template');
delete_site_option('bmltwf_approval_email_template');
delete_option('bmltwf_rejection_email_subject');
delete_site_option('bmltwf_rejection_email_subject');
delete_option('bmltwf_rejection_email_template');
delete_site_option('bmltwf_rejection_email_template');
delete_option('bmltwf_bmlt_server_version');
delete_site_option('bmltwf_bmlt_server_version');

