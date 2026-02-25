<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fct_custom_version');
delete_site_option('fct_custom_version');
delete_option('feng_custom_version');
delete_site_option('feng_custom_version');
delete_option('fct_xianshi_tianshu');
delete_site_option('fct_xianshi_tianshu');
delete_option('fct_kaitong_shijian');
delete_site_option('fct_kaitong_shijian');
delete_option('fct_kaitong_bangding');
delete_site_option('fct_kaitong_bangding');
delete_option('fct_kaitong_neirong');
delete_site_option('fct_kaitong_neirong');
delete_option('fct_shurukuang');
delete_site_option('fct_shurukuang');
delete_option('fct_denglong');
delete_site_option('fct_denglong');
delete_option('fct_denglong_zi_1');
delete_site_option('fct_denglong_zi_1');
delete_option('fct_denglong_zi_2');
delete_site_option('fct_denglong_zi_2');
delete_option('fct_denglong_kaishi');
delete_site_option('fct_denglong_kaishi');
delete_option('fct_denglong_jieshu');
delete_site_option('fct_denglong_jieshu');
delete_option('fct_huise');
delete_site_option('fct_huise');
delete_option('fct_huise_kaishi');
delete_site_option('fct_huise_kaishi');
delete_option('fct_huise_jieshu');
delete_site_option('fct_huise_jieshu');
delete_option('fct_dengxiang');
delete_site_option('fct_dengxiang');
delete_option('fct_dengxiang_bangding');
delete_site_option('fct_dengxiang_bangding');
delete_option('fct_lianjie');
delete_site_option('fct_lianjie');
delete_option('fct_lianjie_weiba');
delete_site_option('fct_lianjie_weiba');
delete_option('fct_festivals');
delete_site_option('fct_festivals');
delete_option('fct_festivals_option');
delete_site_option('fct_festivals_option');
delete_option('fct_xuehua');
delete_site_option('fct_xuehua');
delete_option('fct_xuehua_option');
delete_site_option('fct_xuehua_option');
delete_option('fct_links');
delete_site_option('fct_links');
delete_option('fct_links_option');
delete_site_option('fct_links_option');
delete_option('feng_custom_switch');
delete_site_option('feng_custom_switch');
delete_option('feng_custom_option');
delete_site_option('feng_custom_option');
delete_option('feng_custom_festivals');
delete_site_option('feng_custom_festivals');
delete_option('feng_customfct_snowflake');
delete_site_option('feng_customfct_snowflake');
delete_option('feng_custom_links');
delete_site_option('feng_custom_links');

// Clear Cron Jobs
wp_clear_scheduled_hook('fct_links_rss_cron_hook');

