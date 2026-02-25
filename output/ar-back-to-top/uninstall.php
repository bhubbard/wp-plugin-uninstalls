<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('arbtt_custom_css');
delete_site_option('arbtt_custom_css');
delete_option('arbtt_enable');
delete_site_option('arbtt_enable');
delete_option('arbtt_progress_color');
delete_site_option('arbtt_progress_color');
delete_option('arbtt_enable_scroll_progress');
delete_site_option('arbtt_enable_scroll_progress');
delete_option('arbtt_enable_scroll_progress_size');
delete_site_option('arbtt_enable_scroll_progress_size');
delete_option('arbtt_is_async');
delete_site_option('arbtt_is_async');
delete_option('arbtt_bgc');
delete_site_option('arbtt_bgc');
delete_option('arbtt_bgc_hover');
delete_site_option('arbtt_bgc_hover');
delete_option('arbtt_clr');
delete_site_option('arbtt_clr');
delete_option('arbtt_clr_hover');
delete_site_option('arbtt_clr_hover');
delete_option('arbtt_bdr');
delete_site_option('arbtt_bdr');
delete_option('arbtt_bdr_color');
delete_site_option('arbtt_bdr_color');
delete_option('arbtt_bdr_color_hover');
delete_site_option('arbtt_bdr_color_hover');
delete_option('arbtt_bdrd');
delete_site_option('arbtt_bdrd');
delete_option('arbtt_btnps');
delete_site_option('arbtt_btnps');
delete_option('arbtt_btn_offset_bottom');
delete_site_option('arbtt_btn_offset_bottom');
delete_option('arbtt_btn_offset_right');
delete_site_option('arbtt_btn_offset_right');
delete_option('arbtt_btn_offset_left');
delete_site_option('arbtt_btn_offset_left');
delete_option('arbtt_btnapr');
delete_site_option('arbtt_btnapr');
delete_option('arbtt_btndm');
delete_site_option('arbtt_btndm');
delete_option('arbtt_btn_padding');
delete_site_option('arbtt_btn_padding');
delete_option('arbtt_btnoc');
delete_site_option('arbtt_btnoc');
delete_option('arbtt_fi');
delete_site_option('arbtt_fi');
delete_option('arbtt_btntx');
delete_site_option('arbtt_btntx');
delete_option('arbtt_btn_ext_img_url');
delete_site_option('arbtt_btn_ext_img_url');
delete_option('arbtt_btn_img');
delete_site_option('arbtt_btn_img');
delete_option('arbtt_btn_img_position');
delete_site_option('arbtt_btn_img_position');
delete_option('arbtt_fadein');
delete_site_option('arbtt_fadein');
delete_option('arbtt_fz');
delete_site_option('arbtt_fz');
delete_option('arbtt_hide_on_phone');
delete_site_option('arbtt_hide_on_phone');
delete_option('arbtt_hide_on_tablet');
delete_site_option('arbtt_hide_on_tablet');
delete_option('arbtt_pwidth');
delete_site_option('arbtt_pwidth');
delete_option('arbtt_twidth');
delete_site_option('arbtt_twidth');
delete_option('arbtt_btnst');
delete_site_option('arbtt_btnst');
delete_option('arbtt_do_activation_redirect');
delete_site_option('arbtt_do_activation_redirect');
delete_option('arbtt');
delete_site_option('arbtt');
delete_option('arbtt_btnwidth');
delete_site_option('arbtt_btnwidth');
delete_option('arbtt_btnheight');
delete_site_option('arbtt_btnheight');
delete_option('arbtt_meta_position');
delete_site_option('arbtt_meta_position');
delete_option('arbtt_word_count');
delete_site_option('arbtt_word_count');
delete_option('arbtt_char_counts');
delete_site_option('arbtt_char_counts');
delete_option('arbtt_read_time');
delete_site_option('arbtt_read_time');
delete_option('arbtt_view_count');
delete_site_option('arbtt_view_count');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", '_arbtt_post_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", '_arbtt_post_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", '_arbtt_post_views' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", '_arbtt_post_views' ) );

