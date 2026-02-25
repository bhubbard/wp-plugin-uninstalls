<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('JSONAPI-Host');
delete_site_option('JSONAPI-Host');
delete_option('JSONAPI-Port');
delete_site_option('JSONAPI-Port');
delete_option('JSONAPI-User');
delete_site_option('JSONAPI-User');
delete_option('JSONAPI-Pass');
delete_site_option('JSONAPI-Pass');
delete_option('JSONAPI-Salt');
delete_site_option('JSONAPI-Salt');
delete_option('mcp_widget_host');
delete_site_option('mcp_widget_host');
delete_option('mcp_widget_title');
delete_site_option('mcp_widget_title');
delete_option('mcp_widget_status');
delete_site_option('mcp_widget_status');
delete_option('mcp_chat_widget_title');
delete_site_option('mcp_chat_widget_title');
delete_option('mcp_widget_hostname');
delete_site_option('mcp_widget_hostname');
delete_option('mcp_widget_avatar_size');
delete_site_option('mcp_widget_avatar_size');
delete_option('mcp_widget_motd');
delete_site_option('mcp_widget_motd');
delete_option('mcp_widget_name');
delete_site_option('mcp_widget_name');
delete_option('mcp_widget_version');
delete_site_option('mcp_widget_version');
delete_option('mcp_widget_port');
delete_site_option('mcp_widget_port');
delete_option('mcp_widget_plugins');
delete_site_option('mcp_widget_plugins');
delete_option('mcp_widget_plugininfo');
delete_site_option('mcp_widget_plugininfo');
delete_option('mcp_widget_player');
delete_site_option('mcp_widget_player');
delete_option('mcp_widget_avatars');
delete_site_option('mcp_widget_avatars');
delete_option('mcp_chat-amount');
delete_site_option('mcp_chat-amount');
delete_option('mcp_chat-capability');
delete_site_option('mcp_chat-capability');
delete_option('mcp_stream-amount');
delete_site_option('mcp_stream-amount');
delete_option('mcp_widget_image_size');
delete_site_option('mcp_widget_image_size');
delete_option('mcp_widget_ticks');
delete_site_option('mcp_widget_ticks');
delete_option('mcp_widget_plugintooltips');
delete_site_option('mcp_widget_plugintooltips');
delete_option('mcp_widget_avatartooltips');
delete_site_option('mcp_widget_avatartooltips');

