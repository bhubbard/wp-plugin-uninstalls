<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simpar_enableSound');
delete_site_option('simpar_enableSound');
delete_option('simpar_doNotIncludeChannel');
delete_site_option('simpar_doNotIncludeChannel');
delete_option('simpar_appName');
delete_site_option('simpar_appName');
delete_option('simpar_appID');
delete_site_option('simpar_appID');
delete_option('simpar_restApi');
delete_site_option('simpar_restApi');
delete_option('simpar_autoSendTitle');
delete_site_option('simpar_autoSendTitle');
delete_option('simpar_includePostID');
delete_site_option('simpar_includePostID');
delete_option('simpar_discardScheduledPosts');
delete_site_option('simpar_discardScheduledPosts');
delete_option('simpar_saveLastMessage');
delete_site_option('simpar_saveLastMessage');
delete_option('simpar_pushChannels');
delete_site_option('simpar_pushChannels');
delete_option('simpar_metaBoxPriority');
delete_site_option('simpar_metaBoxPriority');
delete_option('simpar_metabox_pt');
delete_site_option('simpar_metabox_pt');
delete_option('simpar_scheduled_message_options');
delete_site_option('simpar_scheduled_message_options');
delete_option('simpar_hide_warning');
delete_site_option('simpar_hide_warning');
delete_option('simpar_lastMessage');
delete_site_option('simpar_lastMessage');
delete_option('simpar_sendToChannels');
delete_site_option('simpar_sendToChannels');

