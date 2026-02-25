<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tag_manage_key');
delete_site_option('tag_manage_key');
delete_option('tagmanage_wzt_token1');
delete_site_option('tagmanage_wzt_token1');
delete_option('tagmanage_wzt_token2');
delete_site_option('tagmanage_wzt_token2');
delete_option('tagmanage_wzt_token3');
delete_site_option('tagmanage_wzt_token3');
delete_option('tagmanage_tongchang');
delete_site_option('tagmanage_tongchang');
delete_option('tagmanage_tongji');
delete_site_option('tagmanage_tongji');
delete_option('tagmanage_clear');
delete_site_option('tagmanage_clear');
delete_option('tagmanage_level');
delete_site_option('tagmanage_level');
delete_option('tagmanage_tag');
delete_site_option('tagmanage_tag');
delete_option('Tag_manage_key');
delete_site_option('Tag_manage_key');
delete_option('tagmanage_zz');
delete_site_option('tagmanage_zz');
delete_option('Tag_manage_link');
delete_site_option('Tag_manage_link');
delete_option('tagmanage_auth_fail_count');
delete_site_option('tagmanage_auth_fail_count');
delete_option('tagmanage_auth_last_fail_time');
delete_site_option('tagmanage_auth_last_fail_time');

// Clear Cron Jobs
wp_clear_scheduled_hook('tagmanage_cronhook');
wp_clear_scheduled_hook('tagmanage_cronhook1');
wp_clear_scheduled_hook('tagmanage_five_minute_task_hook');

