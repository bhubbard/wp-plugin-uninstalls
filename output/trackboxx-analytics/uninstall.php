<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('trackboxx_tracking_id');
delete_site_option('trackboxx_tracking_id');
delete_option('trackboxx_public_url');
delete_site_option('trackboxx_public_url');
delete_option('trackboxx_optout_text');
delete_site_option('trackboxx_optout_text');
delete_option('trackboxx_optout_key');
delete_site_option('trackboxx_optout_key');
delete_option('website_type');
delete_site_option('website_type');

