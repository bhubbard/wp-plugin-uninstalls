<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bsmaps_gmap_key');
delete_site_option('bsmaps_gmap_key');
delete_option('bsmaps_options');
delete_site_option('bsmaps_options');

// Delete Transients
delete_transient('bsmaps_ad_banner_popup_dismissed');
delete_site_transient('bsmaps_ad_banner_popup_dismissed');

