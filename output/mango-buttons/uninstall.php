<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mb_subscribed');
delete_site_option('mb_subscribed');
delete_option('mb_email');
delete_site_option('mb_email');
delete_option('mb_icon_color');
delete_site_option('mb_icon_color');
delete_option('mb_extended_language_support');
delete_site_option('mb_extended_language_support');
delete_option('MB_VERSION');
delete_site_option('MB_VERSION');

