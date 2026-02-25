<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yz_chatbot_settings');
delete_site_option('yz_chatbot_settings');
delete_option('yz_chatbot_version');
delete_site_option('yz_chatbot_version');
delete_option('yz_chatbot_activation_redirect');
delete_site_option('yz_chatbot_activation_redirect');

// Delete Transients
delete_transient('yz_chatbot_tenant_verified');
delete_site_transient('yz_chatbot_tenant_verified');

