<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('savvme_selected_plan');
delete_site_option('savvme_selected_plan');
delete_option('savvme_api_url');
delete_site_option('savvme_api_url');
delete_option('savvme_api_key');
delete_site_option('savvme_api_key');
delete_option('savvme_flodesk_api_key');
delete_site_option('savvme_flodesk_api_key');
delete_option('savvme_flodesk_workflow_id');
delete_site_option('savvme_flodesk_workflow_id');
delete_option('savvme_flodesk_segment_id');
delete_site_option('savvme_flodesk_segment_id');
delete_option('savvme_flodesk_segment_name');
delete_site_option('savvme_flodesk_segment_name');
delete_option('savvme_beehiiv_api_key');
delete_site_option('savvme_beehiiv_api_key');
delete_option('savvme_beehiiv_publication_id');
delete_site_option('savvme_beehiiv_publication_id');
delete_option('savvme_activecampaign_api_url');
delete_site_option('savvme_activecampaign_api_url');
delete_option('savvme_activecampaign_api_key');
delete_site_option('savvme_activecampaign_api_key');
delete_option('savvme_mailerlite_api_token');
delete_site_option('savvme_mailerlite_api_token');
delete_option('savme_heading_plan');
delete_site_option('savme_heading_plan');
delete_option('savme_content');
delete_site_option('savme_content');

// Clear Cron Jobs
wp_clear_scheduled_hook('savvy_check_reminders');

