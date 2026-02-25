<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('freenauta_enable_turnstile');
delete_site_option('freenauta_enable_turnstile');
delete_option('freenauta_turnstile_site_key');
delete_site_option('freenauta_turnstile_site_key');
delete_option('freenauta_turnstile_secret_key');
delete_site_option('freenauta_turnstile_secret_key');

