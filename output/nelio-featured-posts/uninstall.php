<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nelioab_campaign_last_dismiss');
delete_site_option('nelioab_campaign_last_dismiss');
delete_option('neliofp_settings');
delete_site_option('neliofp_settings');

