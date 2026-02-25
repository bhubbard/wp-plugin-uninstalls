<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('insertabot_api_key_encrypted');
delete_site_option('insertabot_api_key_encrypted');
delete_option('insertabot_security_logs');
delete_site_option('insertabot_security_logs');
delete_option('insertabot_enabled');
delete_site_option('insertabot_enabled');
delete_option('insertabot_api_base');
delete_site_option('insertabot_api_base');
delete_option('insertabot_api_key');
delete_site_option('insertabot_api_key');

