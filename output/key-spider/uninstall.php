<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('keyspider_zhizhu');
delete_site_option('keyspider_zhizhu');
delete_option('keyspider_liuliang');
delete_site_option('keyspider_liuliang');
delete_option('keyspider_zhizhu_jieduan');
delete_site_option('keyspider_zhizhu_jieduan');
delete_option('keyspider_tongji');
delete_site_option('keyspider_tongji');
delete_option('keyspider_clear');
delete_site_option('keyspider_clear');
delete_option('keyspider_wzt_log');
delete_site_option('keyspider_wzt_log');
delete_option('keyspider_wzt_token3');
delete_site_option('keyspider_wzt_token3');
delete_option('keyspider_wzt_token2');
delete_site_option('keyspider_wzt_token2');
delete_option('keyspider_wzt_token1');
delete_site_option('keyspider_wzt_token1');
delete_option('keyspider_liuliang_diyu_jifen');
delete_site_option('keyspider_liuliang_diyu_jifen');
delete_option('keyspider_liuliang_diyu');
delete_site_option('keyspider_liuliang_diyu');
delete_option('keyspider_level');
delete_site_option('keyspider_level');
delete_option('keyspider_silian');
delete_site_option('keyspider_silian');

// Delete Transients
delete_transient('keyspider_zhizhu_cache');
delete_site_transient('keyspider_zhizhu_cache');

// Clear Cron Jobs
wp_clear_scheduled_hook('keyspider_cronhook');
wp_clear_scheduled_hook('keyspider_five_minute_task_hook');

