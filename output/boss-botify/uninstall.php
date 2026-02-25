<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('boss_botify_bot_type');
delete_site_option('boss_botify_bot_type');
delete_option('boss_botify_chatbot_id');
delete_site_option('boss_botify_chatbot_id');
delete_option('boss_botify_primary_color');
delete_site_option('boss_botify_primary_color');
delete_option('boss_botify_secondary_color');
delete_site_option('boss_botify_secondary_color');

