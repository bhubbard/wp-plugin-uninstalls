<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ocma_fsb_position');
delete_site_option('ocma_fsb_position');
delete_option('ocma_fsb_display_method');
delete_site_option('ocma_fsb_display_method');
delete_option('ocma_fsb_threshold');
delete_site_option('ocma_fsb_threshold');
delete_option('ocma_fsb_bg_color');
delete_site_option('ocma_fsb_bg_color');
delete_option('ocma_fsb_bg_color_progress');
delete_site_option('ocma_fsb_bg_color_progress');
delete_option('ocma_fsb_bg_color_completed');
delete_site_option('ocma_fsb_bg_color_completed');
delete_option('ocma_fsb_msg_initial');
delete_site_option('ocma_fsb_msg_initial');
delete_option('ocma_fsb_msg_progress');
delete_site_option('ocma_fsb_msg_progress');
delete_option('ocma_fsb_msg_completed');
delete_site_option('ocma_fsb_msg_completed');
delete_option('ocma_fsb_enabled');
delete_site_option('ocma_fsb_enabled');
delete_option('ocma_fsb_text_color');
delete_site_option('ocma_fsb_text_color');

