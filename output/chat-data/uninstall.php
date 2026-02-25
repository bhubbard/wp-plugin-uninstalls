<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chatbot_id');
delete_site_option('chatbot_id');
delete_option('embedding_domain');
delete_site_option('embedding_domain');

