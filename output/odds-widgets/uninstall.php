<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('odds_widgets_link_to_us');
delete_site_option('odds_widgets_link_to_us');
delete_option('odds_widgets_config_data');
delete_site_option('odds_widgets_config_data');
delete_option('odds_widgets_subscribe_email');
delete_site_option('odds_widgets_subscribe_email');
delete_option('odds_widgets_subscribe');
delete_site_option('odds_widgets_subscribe');
delete_option('odds_widgets_replace_jquery');
delete_site_option('odds_widgets_replace_jquery');

