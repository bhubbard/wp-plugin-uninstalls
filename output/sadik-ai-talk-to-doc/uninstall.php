<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sadik_ai_talk_to_doc_plugin_bot_id');
delete_site_option('sadik_ai_talk_to_doc_plugin_bot_id');

