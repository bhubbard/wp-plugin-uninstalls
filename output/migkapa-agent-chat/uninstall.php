<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('migkapa_agent_chat_settings');
delete_site_option('migkapa_agent_chat_settings');

