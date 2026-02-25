<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ma_options');
delete_site_option('ma_options');
delete_option('nirvana_settings');
delete_site_option('nirvana_settings');
delete_option('parabola_settings');
delete_site_option('parabola_settings');
delete_option('tempera_settings');
delete_site_option('tempera_settings');

