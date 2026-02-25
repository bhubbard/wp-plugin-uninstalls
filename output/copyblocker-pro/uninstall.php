<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('copyblocker_pro_disable_selection');
delete_site_option('copyblocker_pro_disable_selection');
delete_option('copyblocker_pro_block_copy');
delete_site_option('copyblocker_pro_block_copy');
delete_option('copyblocker_pro_block_select_all');
delete_site_option('copyblocker_pro_block_select_all');
delete_option('copyblocker_pro_block_dev_tools');
delete_site_option('copyblocker_pro_block_dev_tools');
delete_option('copyblocker_pro_block_context_menu');
delete_site_option('copyblocker_pro_block_context_menu');
delete_option('copyblocker_pro_block_screen_capture');
delete_site_option('copyblocker_pro_block_screen_capture');
delete_option('copyblocker_pro_block_print');
delete_site_option('copyblocker_pro_block_print');
delete_option('copyblocker_pro_block_image_download');
delete_site_option('copyblocker_pro_block_image_download');

