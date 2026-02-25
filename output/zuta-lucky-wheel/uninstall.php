<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zutalw_game_title');
delete_site_option('zutalw_game_title');
delete_option('zutalw_popup_delay');
delete_site_option('zutalw_popup_delay');
delete_option('zutalw_max_spins');
delete_site_option('zutalw_max_spins');
delete_option('zutalw_reset_days');
delete_site_option('zutalw_reset_days');
delete_option('zutalw_recaptcha_site_key');
delete_site_option('zutalw_recaptcha_site_key');
delete_option('zutalw_recaptcha_secret_key');
delete_site_option('zutalw_recaptcha_secret_key');

