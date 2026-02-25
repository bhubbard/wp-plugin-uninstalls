<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gf_settings');
delete_site_option('gf_settings');
delete_option('gravityformsaddon_gravityformsrecaptcha_settings');
delete_site_option('gravityformsaddon_gravityformsrecaptcha_settings');
delete_option('gfcnp_plugin');
delete_site_option('gfcnp_plugin');
delete_option('gf_cnp_settings');
delete_site_option('gf_cnp_settings');
delete_option('gfcnp_activation_error');
delete_site_option('gfcnp_activation_error');

