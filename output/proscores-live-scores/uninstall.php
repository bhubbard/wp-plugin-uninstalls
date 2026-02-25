<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('proscores_settings_options');
delete_site_option('proscores_settings_options');
delete_option('proscores_settings_options_standings');
delete_site_option('proscores_settings_options_standings');

