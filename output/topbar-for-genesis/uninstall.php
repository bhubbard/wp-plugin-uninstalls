<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sticky_genesis_topbar_bg');
delete_site_option('sticky_genesis_topbar_bg');
delete_option('sticky_genesis_topbar_tcolor');
delete_site_option('sticky_genesis_topbar_tcolor');
delete_option('sticky_genesis_topbar_bbg');
delete_site_option('sticky_genesis_topbar_bbg');
delete_option('sticky_genesis_topbar_tc');
delete_site_option('sticky_genesis_topbar_tc');
delete_option('sticky_genesis_topbar_cdbc');
delete_site_option('sticky_genesis_topbar_cdbc');
delete_option('topbar_max_width');
delete_site_option('topbar_max_width');
delete_option('topbar_font_size');
delete_site_option('topbar_font_size');
delete_option('topbar_height');
delete_site_option('topbar_height');
delete_option('sticky_topbar_btn_animation');
delete_site_option('sticky_topbar_btn_animation');
delete_option('sticky_topbar_reposition');
delete_site_option('sticky_topbar_reposition');
delete_option('topbar_show_on');
delete_site_option('topbar_show_on');
delete_option('unsticky_topbar');
delete_site_option('unsticky_topbar');
delete_option('studio_player_topbar_text');
delete_site_option('studio_player_topbar_text');
delete_option('studio_player_topbar_url');
delete_site_option('studio_player_topbar_url');
delete_option('sticky_topbar_url_target');
delete_site_option('sticky_topbar_url_target');
delete_option('sticky_topbar_url_rel');
delete_site_option('sticky_topbar_url_rel');
delete_option('studio_player_topbar_btn_text');
delete_site_option('studio_player_topbar_btn_text');
delete_option('sticky_genesis_topbar_facebook');
delete_site_option('sticky_genesis_topbar_facebook');
delete_option('sticky_genesis_topbar_twitter');
delete_site_option('sticky_genesis_topbar_twitter');
delete_option('sticky_genesis_topbar_linkedIn');
delete_site_option('sticky_genesis_topbar_linkedIn');
delete_option('sticky_genesis_topbar_pinterest');
delete_site_option('sticky_genesis_topbar_pinterest');
delete_option('sticky_genesis_topbar_instagram');
delete_site_option('sticky_genesis_topbar_instagram');
delete_option('sticky_genesis_topbar_youtube');
delete_site_option('sticky_genesis_topbar_youtube');
delete_option('sticky_genesis_topbar_dribbble');
delete_site_option('sticky_genesis_topbar_dribbble');
delete_option('sticky_genesis_topbar_medium');
delete_site_option('sticky_genesis_topbar_medium');
delete_option('sticky_genesis_topbar_tumblr');
delete_site_option('sticky_genesis_topbar_tumblr');
delete_option('sticky_genesis_topbar_vimeo');
delete_site_option('sticky_genesis_topbar_vimeo');
delete_option('sticky_genesis_topbar_cell');
delete_site_option('sticky_genesis_topbar_cell');
delete_option('topbar_social_off');
delete_site_option('topbar_social_off');
delete_option('topbar_social_hide_on_mob');
delete_site_option('topbar_social_hide_on_mob');
delete_option('text_before_countdown');
delete_site_option('text_before_countdown');
delete_option('sticky_cd_mth');
delete_site_option('sticky_cd_mth');
delete_option('sticky_cd_date');
delete_site_option('sticky_cd_date');
delete_option('sticky_cd_yer');
delete_site_option('sticky_cd_yer');
delete_option('sticky_cd_time_hr');
delete_site_option('sticky_cd_time_hr');
delete_option('sticky_cd_time_min');
delete_site_option('sticky_cd_time_min');
delete_option('sticky_cd_time_sec');
delete_site_option('sticky_cd_time_sec');
delete_option('topbar_countdown_off');
delete_site_option('topbar_countdown_off');
delete_option('studio_player_footer_creds');
delete_site_option('studio_player_footer_creds');
delete_option('or_loop');
delete_site_option('or_loop');
delete_option('or_loop_hrs');
delete_site_option('or_loop_hrs');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'sgt_plugin_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'sgt_plugin_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'sgt_plugin_notice_dismissed' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'sgt_plugin_notice_dismissed' ) );

