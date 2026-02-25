<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpsocialite_excerpt');
delete_site_option('wpsocialite_excerpt');
delete_option('wpsocialite_networkoptions');
delete_site_option('wpsocialite_networkoptions');
delete_option('wpsocialite_mode');
delete_site_option('wpsocialite_mode');
delete_option('wpsocialite_vkontakte_apiId');
delete_site_option('wpsocialite_vkontakte_apiId');
delete_option('wpsocialite_style');
delete_site_option('wpsocialite_style');
delete_option('wpsocialite_single');
delete_site_option('wpsocialite_single');
delete_option('wpsocialite_position');
delete_site_option('wpsocialite_position');
delete_option('wpsocialite_post_types');
delete_site_option('wpsocialite_post_types');
delete_option('wpsocialite_twitter_username');
delete_site_option('wpsocialite_twitter_username');

