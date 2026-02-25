<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('abwp_sc_yandex_webmaster');
delete_site_option('abwp_sc_yandex_webmaster');
delete_option('abwp_sc_yandex_metrika');
delete_site_option('abwp_sc_yandex_metrika');
delete_option('abwp_sc_yandex_metrika_position');
delete_site_option('abwp_sc_yandex_metrika_position');
delete_option('abwp_sc_google_search_console');
delete_site_option('abwp_sc_google_search_console');
delete_option('abwp_sc_google_analytics');
delete_site_option('abwp_sc_google_analytics');
delete_option('abwp_sc_google_analytics_position');
delete_site_option('abwp_sc_google_analytics_position');
delete_option('abwp_sc_yandex_metrika_token');
delete_site_option('abwp_sc_yandex_metrika_token');
delete_option('abwp_sc_yandex_metrika_counter_id');
delete_site_option('abwp_sc_yandex_metrika_counter_id');

