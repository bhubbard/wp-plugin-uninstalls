<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cnss-social-profile-type');
delete_site_option('cnss-social-profile-type');
delete_option('cnss-width');
delete_site_option('cnss-width');
delete_option('cnss-height');
delete_site_option('cnss-height');
delete_option('cnss-margin');
delete_site_option('cnss-margin');
delete_option('cnss-row-count');
delete_site_option('cnss-row-count');
delete_option('cnss-vertical-horizontal');
delete_site_option('cnss-vertical-horizontal');
delete_option('cnss-text-align');
delete_site_option('cnss-text-align');
delete_option('cnss-social-profile-links');
delete_site_option('cnss-social-profile-links');
delete_option('cnss-icon-bg-color');
delete_site_option('cnss-icon-bg-color');
delete_option('cnss-icon-bg-hover-color');
delete_site_option('cnss-icon-bg-hover-color');
delete_option('cnss-icon-color');
delete_site_option('cnss-icon-color');
delete_option('cnss-icon-hover-color');
delete_site_option('cnss-icon-hover-color');
delete_option('cnss-icon-shape');
delete_site_option('cnss-icon-shape');
delete_option('cnss-original-icon-color');
delete_site_option('cnss-original-icon-color');
delete_option('cnss-icon-name-show');
delete_site_option('cnss-icon-name-show');
delete_option('cnss-icon-name-font-color');
delete_site_option('cnss-icon-name-font-color');
delete_option('cnss-icon-name-font-size');
delete_site_option('cnss-icon-name-font-size');

