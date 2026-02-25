<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apple_meta_tags_web_app_mode');
delete_site_option('apple_meta_tags_web_app_mode');
delete_option('apple_meta_tags_web_app_status_bar_style');
delete_site_option('apple_meta_tags_web_app_status_bar_style');
delete_option('apple_meta_tags_web_app_title');
delete_site_option('apple_meta_tags_web_app_title');
delete_option('apple_meta_tags_use_viewport');
delete_site_option('apple_meta_tags_use_viewport');
delete_option('apple_meta_tags_viewport');
delete_site_option('apple_meta_tags_viewport');
delete_option('apple_meta_tags_telephone');
delete_site_option('apple_meta_tags_telephone');
delete_option('apple_meta_tags_favicon');
delete_site_option('apple_meta_tags_favicon');
delete_option('apple_meta_tags_favicon_png');
delete_site_option('apple_meta_tags_favicon_png');
delete_option('apple_meta_tags_touch_icon_precomposed');
delete_site_option('apple_meta_tags_touch_icon_precomposed');
delete_option('apple_meta_tags_default_touch_icon');
delete_site_option('apple_meta_tags_default_touch_icon');
delete_option('apple_meta_tags_touch_icon_57');
delete_site_option('apple_meta_tags_touch_icon_57');
delete_option('apple_meta_tags_touch_icon_72');
delete_site_option('apple_meta_tags_touch_icon_72');
delete_option('apple_meta_tags_touch_icon_114');
delete_site_option('apple_meta_tags_touch_icon_114');
delete_option('apple_meta_tags_touch_icon_144');
delete_site_option('apple_meta_tags_touch_icon_144');
delete_option('apple_meta_tags_use_startup_screen');
delete_site_option('apple_meta_tags_use_startup_screen');
delete_option('apple_meta_tags_startup_screen_320_460');
delete_site_option('apple_meta_tags_startup_screen_320_460');
delete_option('apple_meta_tags_startup_screen_640_920');
delete_site_option('apple_meta_tags_startup_screen_640_920');
delete_option('apple_meta_tags_startup_screen_640_1096');
delete_site_option('apple_meta_tags_startup_screen_640_1096');
delete_option('apple_meta_tags_startup_screen_768_1004');
delete_site_option('apple_meta_tags_startup_screen_768_1004');
delete_option('apple_meta_tags_startup_screen_1024_748');
delete_site_option('apple_meta_tags_startup_screen_1024_748');
delete_option('apple_meta_tags_startup_screen_1536_2008');
delete_site_option('apple_meta_tags_startup_screen_1536_2008');
delete_option('apple_meta_tags_startup_screen_2048_1496');
delete_site_option('apple_meta_tags_startup_screen_2048_1496');
delete_option('apple_meta_tags_use_smart_app_banner');
delete_site_option('apple_meta_tags_use_smart_app_banner');
delete_option('apple_meta_tags_app_store_id');
delete_site_option('apple_meta_tags_app_store_id');
delete_option('apple_meta_tags_affiliate_id');
delete_site_option('apple_meta_tags_affiliate_id');
delete_option('apple_meta_tags_app_argument');
delete_site_option('apple_meta_tags_app_argument');

