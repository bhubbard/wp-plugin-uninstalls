<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('guidelite_assistant_chat_id');
delete_site_option('guidelite_assistant_chat_id');

