<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fast_yandex_metrika_settings');
delete_site_option('fast_yandex_metrika_settings');

