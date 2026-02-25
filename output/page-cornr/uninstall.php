<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pagecornr_version');
delete_site_option('pagecornr_version');
delete_option('pagecornr_ad_url');
delete_site_option('pagecornr_ad_url');
delete_option('pagecornr_ad_msg');
delete_site_option('pagecornr_ad_msg');

