<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('3ov_ai_enabled');
delete_site_option('3ov_ai_enabled');
delete_option('3ov_mp_networkWorker');
delete_site_option('3ov_mp_networkWorker');
delete_option('3ov_ai_openApiKey');
delete_site_option('3ov_ai_openApiKey');
delete_option('3ov_ai_allow');
delete_site_option('3ov_ai_allow');
delete_option('3ov_defaultVRM');
delete_site_option('3ov_defaultVRM');
delete_option('3ov_defaultAvatar');
delete_site_option('3ov_defaultAvatar');
delete_option('3ov_plugin_version');
delete_site_option('3ov_plugin_version');

