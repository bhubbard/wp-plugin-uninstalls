<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('borghive_website_chatbot_id');
delete_site_option('borghive_website_chatbot_id');

