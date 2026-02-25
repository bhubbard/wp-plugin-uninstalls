<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('web_irc_ws_url');
delete_site_option('web_irc_ws_url');
delete_option('web_irc_channel');
delete_site_option('web_irc_channel');
delete_option('web_irc_nickname_prefix');
delete_site_option('web_irc_nickname_prefix');
delete_option('web_irc_realname');
delete_site_option('web_irc_realname');
delete_option('web_irc_theme');
delete_site_option('web_irc_theme');
delete_option('web_irc_autoconnect');
delete_site_option('web_irc_autoconnect');

// Delete Transients
delete_transient('web_irc_client_cache');
delete_site_transient('web_irc_client_cache');

