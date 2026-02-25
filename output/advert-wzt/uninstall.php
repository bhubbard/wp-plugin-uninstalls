<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('advert_log');
delete_site_option('advert_log');
delete_option('advert_guanggao');
delete_site_option('advert_guanggao');
delete_option('advert_db_version');
delete_site_option('advert_db_version');
delete_option('advert_is_mianze');
delete_site_option('advert_is_mianze');
delete_option('advert_wzt_token1');
delete_site_option('advert_wzt_token1');
delete_option('advert_wzt_token2');
delete_site_option('advert_wzt_token2');
delete_option('advert_wzt_token3');
delete_site_option('advert_wzt_token3');
delete_option('advert_tongji');
delete_site_option('advert_tongji');
delete_option('advert_level');
delete_site_option('advert_level');

