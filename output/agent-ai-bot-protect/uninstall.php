<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agent_ai_bot_protect_db_version');
delete_site_option('agent_ai_bot_protect_db_version');
delete_option('agent_ai_bot_protect_robots_txt');
delete_site_option('agent_ai_bot_protect_robots_txt');
delete_option('agent_ai_bot_protect_blocking_enabled');
delete_site_option('agent_ai_bot_protect_blocking_enabled');
delete_option('agent_ai_bot_protect_robots_txt_url');
delete_site_option('agent_ai_bot_protect_robots_txt_url');

