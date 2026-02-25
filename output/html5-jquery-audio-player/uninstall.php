<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hmp_player_db_table_version');
delete_site_option('hmp_player_db_table_version');
delete_option('hmp_player_db_table_rating_version');
delete_site_option('hmp_player_db_table_rating_version');
delete_option('buy_text');
delete_site_option('buy_text');
delete_option('color');
delete_site_option('color');
delete_option('showlist');
delete_site_option('showlist');
delete_option('showbuy');
delete_site_option('showbuy');
delete_option('hmp_description');
delete_site_option('hmp_description');
delete_option('currency');
delete_site_option('currency');
delete_option('tracks');
delete_site_option('tracks');
delete_option('tcolor');
delete_site_option('tcolor');
delete_option('autoplay');
delete_site_option('autoplay');

