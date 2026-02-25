<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mx-google-authkey');
delete_site_option('mx-google-authkey');
delete_option('mx-google-token');
delete_site_option('mx-google-token');
delete_option('mx-google-refresh-token');
delete_site_option('mx-google-refresh-token');
delete_option('mx-google-counter');
delete_site_option('mx-google-counter');
delete_option('mx-yandex-authkey');
delete_site_option('mx-yandex-authkey');
delete_option('mx-yandex-counter');
delete_site_option('mx-yandex-counter');
delete_option('mx-statcounter-config');
delete_site_option('mx-statcounter-config');
delete_option('mx-openstat-config');
delete_site_option('mx-openstat-config');
delete_option('mx-openstat-counter');
delete_site_option('mx-openstat-counter');
delete_option('mx-yandex-token');
delete_site_option('mx-yandex-token');

