<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('coremetrics_userID');
delete_site_option('coremetrics_userID');
delete_option('coremetrics_blogID');
delete_site_option('coremetrics_blogID');
delete_option('cm_cookie_domain');
delete_site_option('cm_cookie_domain');
delete_option('cm_client_managed');
delete_site_option('cm_client_managed');
delete_option('cm_data_collection_domain');
delete_site_option('cm_data_collection_domain');
delete_option('cm_eluminate_location');
delete_site_option('cm_eluminate_location');
delete_option('cm_custom_script');
delete_site_option('cm_custom_script');
delete_option('cm_custom_pageID');
delete_site_option('cm_custom_pageID');
delete_option('cm_test_override');
delete_site_option('cm_test_override');
delete_option('cm_country_attribute');
delete_site_option('cm_country_attribute');
delete_option('cm_language_attribute');
delete_site_option('cm_language_attribute');
delete_option('cm_track_drafts');
delete_site_option('cm_track_drafts');
delete_option('cm_dismiss_option');
delete_site_option('cm_dismiss_option');
delete_option('cm_customEventDB_version');
delete_site_option('cm_customEventDB_version');
delete_option('cm_eventpoints_option');
delete_site_option('cm_eventpoints_option');
delete_option('cm_eventpoints_onoff');
delete_site_option('cm_eventpoints_onoff');
delete_option('cm_tactical_attributes');
delete_site_option('cm_tactical_attributes');
delete_option('cm_strategic_attributes');
delete_site_option('cm_strategic_attributes');
delete_option('cm_attribute_override');
delete_site_option('cm_attribute_override');

