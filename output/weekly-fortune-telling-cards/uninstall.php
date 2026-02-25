<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('power_fortune_telling_cards_plugin_option');
delete_site_option('power_fortune_telling_cards_plugin_option');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('power_weekly_cards_plugin_version');
delete_site_option('power_weekly_cards_plugin_version');

