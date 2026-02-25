<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('engagebay_domain');
delete_site_option('engagebay_domain');
delete_option('gravityformsaddon_engagebay_version');
delete_site_option('gravityformsaddon_engagebay_version');

