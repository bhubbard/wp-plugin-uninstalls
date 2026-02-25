<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpua_auto_publish_enabled');
delete_site_option('wpua_auto_publish_enabled');
delete_option('wpua_auto_delete_spam_enabled');
delete_site_option('wpua_auto_delete_spam_enabled');
delete_option('wpua_auto_assign_category_enabled');
delete_site_option('wpua_auto_assign_category_enabled');
delete_option('wpua_auto_resize_images_enabled');
delete_site_option('wpua_auto_resize_images_enabled');
delete_option('wpua_auto_clear_cache_enabled');
delete_site_option('wpua_auto_clear_cache_enabled');
delete_option('wpua_image_resize_width');
delete_site_option('wpua_image_resize_width');

// Clear Cron Jobs
wp_clear_scheduled_hook('wpua_auto_delete_spam_hook');
wp_clear_scheduled_hook('wpua_auto_publish_hook');

