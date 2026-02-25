<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ticker_pro_options');
delete_site_option('ticker_pro_options');
delete_option('$options');
delete_site_option('$options');
delete_option('map_option_1');
delete_site_option('map_option_1');
delete_option('map_option_2');
delete_site_option('map_option_2');
delete_option('map_option_3');
delete_site_option('map_option_3');
delete_option('map_option_4');
delete_site_option('map_option_4');
delete_option('map_option_5');
delete_site_option('map_option_5');
delete_option('map_option_6');
delete_site_option('map_option_6');
delete_option('ticker_pro_6489_db_version');
delete_site_option('ticker_pro_6489_db_version');
delete_option('$ticker_pro_6489_db_version');
delete_site_option('$ticker_pro_6489_db_version');

