<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('camhdk_chatbot_pages');
delete_site_option('camhdk_chatbot_pages');

