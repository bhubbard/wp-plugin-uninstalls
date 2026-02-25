<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pmproecaddon_settings');
delete_site_option('pmproecaddon_settings');
delete_option('pmproecaddon_plugin_user_enabled');
delete_site_option('pmproecaddon_plugin_user_enabled');
delete_option('pmproecaddon_consumer_key');
delete_site_option('pmproecaddon_consumer_key');
delete_option('pmproecaddon_consumer_secret');
delete_site_option('pmproecaddon_consumer_secret');
delete_option('pmproecaddon_plugin_list_opt_in_audiences');
delete_site_option('pmproecaddon_plugin_list_opt_in_audiences');
delete_option('pmproecaddon_require_update_profile');
delete_site_option('pmproecaddon_require_update_profile');
delete_option('pmproecaddon_plugin_list_config');
delete_site_option('pmproecaddon_plugin_list_config');
delete_option('pmproecaddon_plugin_list_non_member');
delete_site_option('pmproecaddon_plugin_list_non_member');
delete_option('pmproecaddon_require_unsuscribe_on_level');
delete_site_option('pmproecaddon_require_unsuscribe_on_level');

