<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('metrica_options');
delete_site_option('metrica_options');
delete_option('yandex_metrica_db_version');
delete_site_option('yandex_metrica_db_version');

// Delete Transients
delete_transient('yandex_metrica_installing');
delete_site_transient('yandex_metrica_installing');

