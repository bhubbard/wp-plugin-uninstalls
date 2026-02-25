<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gravityformsaddon_GFFBPT_FBP_settings');
delete_site_option('gravityformsaddon_GFFBPT_FBP_settings');
delete_option('gravityformsaddon_gravity-forms-pixel-tracking_settings');
delete_site_option('gravityformsaddon_gravity-forms-pixel-tracking_settings');

