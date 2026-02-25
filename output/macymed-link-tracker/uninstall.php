<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('macymed_tracker_license_key');
delete_site_option('macymed_tracker_license_key');
delete_option('macymed_tracker_tracking_list_to_track');
delete_site_option('macymed_tracker_tracking_list_to_track');
delete_option('macymed_tracker_tracking_list_personal_data_to_track');
delete_site_option('macymed_tracker_tracking_list_personal_data_to_track');
delete_option('macymed_tracker_tracking_use_external_redirect_page');
delete_site_option('macymed_tracker_tracking_use_external_redirect_page');
delete_option('macymed_tracker_tracking_use_external_javascript_page');
delete_site_option('macymed_tracker_tracking_use_external_javascript_page');
delete_option('macymed_tracker_tracking_record_ip');
delete_site_option('macymed_tracker_tracking_record_ip');
delete_option('macymed_tracker_tracking_record_user_agent');
delete_site_option('macymed_tracker_tracking_record_user_agent');
delete_option('macymed_tracker_redirect_page_display_message');
delete_site_option('macymed_tracker_redirect_page_display_message');
delete_option('macymed_tracker_redirect_page_message');
delete_site_option('macymed_tracker_redirect_page_message');
delete_option('macymed_tracker_inclusions');
delete_site_option('macymed_tracker_inclusions');
delete_option('macymed_tracker_exclusion_domains_relative_path');
delete_site_option('macymed_tracker_exclusion_domains_relative_path');
delete_option('macymed_tracker_exclusion_internal_pages');
delete_site_option('macymed_tracker_exclusion_internal_pages');
delete_option('macymed_tracker_exclusion_user_agents');
delete_site_option('macymed_tracker_exclusion_user_agents');
delete_option('macymed_tracker_exclusion_get');
delete_site_option('macymed_tracker_exclusion_get');
delete_option('macymed_tracker_exclusion_domains');
delete_site_option('macymed_tracker_exclusion_domains');
delete_option('macymed_tracker_exclusion_protocols');
delete_site_option('macymed_tracker_exclusion_protocols');
delete_option('macymed_link_tracker_db_version');
delete_site_option('macymed_link_tracker_db_version');
delete_option('macymed_tracker_redirect_page_delay');
delete_site_option('macymed_tracker_redirect_page_delay');
delete_option('macymed_tracker_redirect_page_logo_link_tracker');
delete_site_option('macymed_tracker_redirect_page_logo_link_tracker');
delete_option('macymed_tracker_exclusion_ips');
delete_site_option('macymed_tracker_exclusion_ips');
delete_option('macymed_tracker_tracking_refresh');
delete_site_option('macymed_tracker_tracking_refresh');
delete_option('macymed_tracker_tracking_record_excluded_ips');
delete_site_option('macymed_tracker_tracking_record_excluded_ips');
delete_option('macymed_tracker_tracking_record_404');
delete_site_option('macymed_tracker_tracking_record_404');

