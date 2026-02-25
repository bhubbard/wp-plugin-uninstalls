<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cookieproCCPASettings');
delete_site_option('cookieproCCPASettings');
delete_option('cookieproCCPABehaviorSettings');
delete_site_option('cookieproCCPABehaviorSettings');
delete_option('CookieProCCPAButtonFloatings');
delete_site_option('CookieProCCPAButtonFloatings');
delete_option('cookieproCCPASettingsPreview');
delete_site_option('cookieproCCPASettingsPreview');
delete_option('cookieproCCPABehaviorSettingsPreview');
delete_site_option('cookieproCCPABehaviorSettingsPreview');

