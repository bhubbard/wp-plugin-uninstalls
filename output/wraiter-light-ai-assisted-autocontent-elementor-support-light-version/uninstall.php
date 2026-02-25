<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wraiter_light_options');
delete_site_option('wraiter_light_options');

// Delete Transients
delete_transient('wraiter_light_ad_banner_popup_dismissed');
delete_site_transient('wraiter_light_ad_banner_popup_dismissed');

