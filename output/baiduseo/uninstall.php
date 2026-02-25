<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('baiduseo_zhizhu');
delete_site_option('baiduseo_zhizhu');
delete_option('baiduseo_wyc');
delete_site_option('baiduseo_wyc');
delete_option('baiduseo_zz');
delete_site_option('baiduseo_zz');
delete_option('baiduseo_bd_chao');
delete_site_option('baiduseo_bd_chao');
delete_option('seo_baidu_sitemap');
delete_site_option('seo_baidu_sitemap');
delete_option('baiduseo_indexnow_record');
delete_site_option('baiduseo_indexnow_record');
delete_option('baiduseo_google_record');
delete_site_option('baiduseo_google_record');
delete_option('baiduseo_liuliang');
delete_site_option('baiduseo_liuliang');
delete_option('baiduseo_linkhh');
delete_site_option('baiduseo_linkhh');
delete_option('baiduseo_friends_kg_num');
delete_site_option('baiduseo_friends_kg_num');
delete_option('baiduseo_hh_count');
delete_site_option('baiduseo_hh_count');
delete_option('baiduseo_sm_record');
delete_site_option('baiduseo_sm_record');
delete_option('baiduseo_auto');
delete_site_option('baiduseo_auto');
delete_option('baiduseo_kp_tongbu');
delete_site_option('baiduseo_kp_tongbu');
delete_option('baiduseo_wzt_log');
delete_site_option('baiduseo_wzt_log');
delete_option('baiduseo_wzt_token1');
delete_site_option('baiduseo_wzt_token1');
delete_option('baiduseo_wzt_token2');
delete_site_option('baiduseo_wzt_token2');
delete_option('baiduseo_wzt_token3');
delete_site_option('baiduseo_wzt_token3');
delete_option('baiduseo_tongchang');
delete_site_option('baiduseo_tongchang');
delete_option('baiduseo_zhizhu_jieduan');
delete_site_option('baiduseo_zhizhu_jieduan');
delete_option('baiduseo_bing_record');
delete_site_option('baiduseo_bing_record');
delete_option('baiduseo_day_record');
delete_site_option('baiduseo_day_record');
delete_option('baiduseo_zz_record');
delete_site_option('baiduseo_zz_record');
delete_option('BaiduSEO_tongji');
delete_site_option('BaiduSEO_tongji');
delete_option('baiduseo_clear');
delete_site_option('baiduseo_clear');
delete_option('baiduseo_liuliang_diyu_jifen');
delete_site_option('baiduseo_liuliang_diyu_jifen');
delete_option('baiduseo_liuliang_diyu');
delete_site_option('baiduseo_liuliang_diyu');
delete_option('baiduseo_beian');
delete_site_option('baiduseo_beian');
delete_option('baiduseo_pingfen');
delete_site_option('baiduseo_pingfen');
delete_option('baiduseo_level');
delete_site_option('baiduseo_level');
delete_option('baiduseo_tag');
delete_site_option('baiduseo_tag');
delete_option('baiduseo_rank');
delete_site_option('baiduseo_rank');
delete_option('baiduseo_quanzhong');
delete_site_option('baiduseo_quanzhong');
delete_option('baiduseo_youhua');
delete_site_option('baiduseo_youhua');
global $wpdb;
$options = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s", 'baiduseo_cate_%' ) );
foreach ( $options as $opt ) {
	delete_option( $opt );
	delete_site_option( $opt );
}
delete_option('seo_init');
delete_site_option('seo_init');
delete_option('seo_301_404_url');
delete_site_option('seo_301_404_url');
delete_option('seo_alt_auto');
delete_site_option('seo_alt_auto');
delete_option('seo_robots_sc');
delete_site_option('seo_robots_sc');
delete_option('seo_baidu_silian');
delete_site_option('seo_baidu_silian');
delete_option('baiduseo_wzjc');
delete_site_option('baiduseo_wzjc');
delete_option('baiduseo_wzjc_count');
delete_site_option('baiduseo_wzjc_count');
delete_option('baiduseo_wzjc_num');
delete_site_option('baiduseo_wzjc_num');
delete_option('baiduseo_yindao');
delete_site_option('baiduseo_yindao');
delete_option('baiduseo_jifen');
delete_site_option('baiduseo_jifen');
delete_option('baiduseo_sitemap_num');
delete_site_option('baiduseo_sitemap_num');
delete_option('baiduseo_tongxun');
delete_site_option('baiduseo_tongxun');

// Delete Transients
delete_transient('baiduseo_zhizhu_cache');
delete_site_transient('baiduseo_zhizhu_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('baiduseo_cronhook');
wp_clear_scheduled_hook('baiduseo_cronhook1');
wp_clear_scheduled_hook('baiduseo_my_minute_task_hook');
wp_clear_scheduled_hook('baiduseo_five_minute_task_hook');
wp_clear_scheduled_hook('baiduseo_art_cron');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'baiduseo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'baiduseo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'baiduseo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'baiduseo' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'baiduseo_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'baiduseo_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'baiduseo_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'baiduseo_page' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_thumbnail_id' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_thumbnail_id' ) );

