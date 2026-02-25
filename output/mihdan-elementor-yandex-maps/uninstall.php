<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elementor_mihdan_elementor_yandex_maps_key');
delete_site_option('elementor_mihdan_elementor_yandex_maps_key');

