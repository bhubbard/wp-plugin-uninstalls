<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('inboxify_fc_api_key');
delete_site_option('inboxify_fc_api_key');
delete_option('inboxify_fc_api_secret');
delete_site_option('inboxify_fc_api_secret');
delete_option('inboxify_fc_lists');
delete_site_option('inboxify_fc_lists');
delete_option('inboxify_fc_plugin_version');
delete_site_option('inboxify_fc_plugin_version');
delete_option('inboxify_fc_mappings');
delete_site_option('inboxify_fc_mappings');

