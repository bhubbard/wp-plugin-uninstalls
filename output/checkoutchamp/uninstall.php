<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('checkout_champ_settings_general');
delete_site_option('checkout_champ_settings_general');
delete_option('checkout_champ_settings_advanced');
delete_site_option('checkout_champ_settings_advanced');

