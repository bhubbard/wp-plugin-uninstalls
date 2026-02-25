<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zaenu_logo');
delete_site_option('zaenu_logo');
delete_option('zaenu_icon');
delete_site_option('zaenu_icon');
delete_option('zaenu_analytics');
delete_site_option('zaenu_analytics');
delete_option('zaenu_adsenseid');
delete_site_option('zaenu_adsenseid');
delete_option('zaenu_adsenseslot');
delete_site_option('zaenu_adsenseslot');

