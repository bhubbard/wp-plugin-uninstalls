<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('easy_tag_and_tracking_id_inserter_google_webmaster');
delete_site_option('easy_tag_and_tracking_id_inserter_google_webmaster');
delete_option('easy_tag_and_tracking_id_inserter_google_analytical');
delete_site_option('easy_tag_and_tracking_id_inserter_google_analytical');
delete_option('easy_tag_and_tracking_id_inserter_google_tag_manager');
delete_site_option('easy_tag_and_tracking_id_inserter_google_tag_manager');
delete_option('easy_tag_and_tracking_id_inserter_webmaster');
delete_site_option('easy_tag_and_tracking_id_inserter_webmaster');
delete_option('easy_tag_and_tracking_id_inserter_analytical');
delete_site_option('easy_tag_and_tracking_id_inserter_analytical');

