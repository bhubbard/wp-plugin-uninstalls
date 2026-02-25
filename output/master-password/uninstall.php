<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mapa_is_plugin_notice_disp');
delete_site_option('mapa_is_plugin_notice_disp');
delete_option('mapa_settings');
delete_site_option('mapa_settings');

