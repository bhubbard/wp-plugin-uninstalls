<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cfip_settings');
delete_site_option('cfip_settings');
delete_option('cfip_log');
delete_site_option('cfip_log');
delete_option('cfip_banned_addresses');
delete_site_option('cfip_banned_addresses');
delete_option('cloudflare_api_email');
delete_site_option('cloudflare_api_email');
delete_option('cloudflare_api_key');
delete_site_option('cloudflare_api_key');
delete_option('cfip_activated_on');
delete_site_option('cfip_activated_on');

