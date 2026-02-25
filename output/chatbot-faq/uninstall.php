<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chatbot_faq_data');
delete_site_option('chatbot_faq_data');
delete_option('chatbot_faq_design_data');
delete_site_option('chatbot_faq_design_data');
delete_option('chatbot_faq_options');
delete_site_option('chatbot_faq_options');

