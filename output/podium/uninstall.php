<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('podium_settings');
delete_site_option('podium_settings');
delete_option('podium-installation');
delete_site_option('podium-installation');
delete_option('podium-feature-flag');
delete_site_option('podium-feature-flag');
delete_option('podium-script-code');
delete_site_option('podium-script-code');

