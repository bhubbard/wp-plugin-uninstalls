<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awdev_wishlist_migration_success');
delete_site_option('awdev_wishlist_migration_success');
delete_option('awdev_wishlist_migration_error');
delete_site_option('awdev_wishlist_migration_error');
delete_option('awdev_wishlist_custom_icon');
delete_site_option('awdev_wishlist_custom_icon');
delete_option('awdev_wishlist_migration_completed');
delete_site_option('awdev_wishlist_migration_completed');
delete_option('awdev_wishlist_button_corners');
delete_site_option('awdev_wishlist_button_corners');
delete_option('awdev_wishlist_button_color');
delete_site_option('awdev_wishlist_button_color');
delete_option('awdev_wishlist_button_text_color');
delete_site_option('awdev_wishlist_button_text_color');
delete_option('awdev_wishlist_in_wishlist_color');
delete_site_option('awdev_wishlist_in_wishlist_color');
delete_option('awdev_wishlist_in_wishlist_text_color');
delete_site_option('awdev_wishlist_in_wishlist_text_color');
delete_option('awdev_wishlist_button_icon');
delete_site_option('awdev_wishlist_button_icon');
delete_option('awdev_wishlist_icon_only');
delete_site_option('awdev_wishlist_icon_only');
delete_option('awdev_wishlist_settings');
delete_site_option('awdev_wishlist_settings');
delete_option('awdev_wishlist_page_id');
delete_site_option('awdev_wishlist_page_id');
delete_option('awdev_wishlist_setup_completed');
delete_site_option('awdev_wishlist_setup_completed');
delete_option('awdev_wishlist_db_version');
delete_site_option('awdev_wishlist_db_version');
delete_option('awdev_wishlist_migration_version');
delete_site_option('awdev_wishlist_migration_version');
delete_option('awdev_wishlist_cleanup_completed');
delete_site_option('awdev_wishlist_cleanup_completed');
delete_option('awdev_wishlist_redirect_after_add');
delete_site_option('awdev_wishlist_redirect_after_add');
delete_option('awdev_wishlist_added_message');
delete_site_option('awdev_wishlist_added_message');
delete_option('awdev_wishlist_in_wishlist_text');
delete_site_option('awdev_wishlist_in_wishlist_text');
delete_option('awdev_wishlist_error_message');
delete_site_option('awdev_wishlist_error_message');
delete_option('awdev_wishlist_removed_message');
delete_site_option('awdev_wishlist_removed_message');
delete_option('awdev_wishlist_add_text');
delete_site_option('awdev_wishlist_add_text');
delete_option('awdev_wishlist_button_style');
delete_site_option('awdev_wishlist_button_style');
delete_option('awdev_wishlist_view_wishlist_text');
delete_site_option('awdev_wishlist_view_wishlist_text');
delete_option('awdev_wishlist_show_on_product');
delete_site_option('awdev_wishlist_show_on_product');
delete_option('awdev_wishlist_show_on_shop');
delete_site_option('awdev_wishlist_show_on_shop');
delete_option('awdev_wishlist_button_position');
delete_site_option('awdev_wishlist_button_position');
delete_option('awdev_wishlist_loop_position');
delete_site_option('awdev_wishlist_loop_position');
delete_option('awdev_wishlist_loop_alignment');
delete_site_option('awdev_wishlist_loop_alignment');
delete_option('awdev_wishlist_page_url');
delete_site_option('awdev_wishlist_page_url');
delete_option('awdev_wishlist_empty_title');
delete_site_option('awdev_wishlist_empty_title');
delete_option('awdev_wishlist_empty_description');
delete_site_option('awdev_wishlist_empty_description');
delete_option('awdev_wishlist_continue_shopping_text');
delete_site_option('awdev_wishlist_continue_shopping_text');
delete_option('awdev_wishlist_table_columns');
delete_site_option('awdev_wishlist_table_columns');
delete_option('awdev_wishlist_view_product_text');
delete_site_option('awdev_wishlist_view_product_text');

// Clear Cron Jobs
wp_clear_scheduled_hook('awdev_wishlist_cleanup_sessions');
wp_clear_scheduled_hook('awdev_wishlist_daily_cleanup');

