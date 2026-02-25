<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('skylark_vk_application_id');
delete_site_option('skylark_vk_application_id');
delete_option('skylark_vk_group_id');
delete_site_option('skylark_vk_group_id');
delete_option('skylark_vk_autopost_on_publish');
delete_site_option('skylark_vk_autopost_on_publish');
delete_option('skylark_vk_use_excerpt_text');
delete_site_option('skylark_vk_use_excerpt_text');
delete_option('skylark_vk_use_excerpt_length');
delete_site_option('skylark_vk_use_excerpt_length');
delete_option('skylark_vk_admin_email');
delete_site_option('skylark_vk_admin_email');
delete_option('skylark_vk_admin_password');
delete_site_option('skylark_vk_admin_password');
delete_option('skylark_vk_use_bot');
delete_site_option('skylark_vk_use_bot');
delete_option('skylark_vk_phone_num');
delete_site_option('skylark_vk_phone_num');

