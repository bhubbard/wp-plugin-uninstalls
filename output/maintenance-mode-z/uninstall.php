<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mmode_tab1_mmode');
delete_site_option('mmode_tab1_mmode');
delete_option('mmode_tab2_mmode_ip');
delete_site_option('mmode_tab2_mmode_ip');
delete_option('mmode_tab2_mmode_users');
delete_site_option('mmode_tab2_mmode_users');
delete_option('mmode_tab1_time');
delete_site_option('mmode_tab1_time');
delete_option('mmode_tab1_mmode_template');
delete_site_option('mmode_tab1_mmode_template');
delete_option('mmode_tabthree_checkbox_slider');
delete_site_option('mmode_tabthree_checkbox_slider');
delete_option('mmode_tabthree_mmode_slider_animation');
delete_site_option('mmode_tabthree_mmode_slider_animation');
delete_option('mmode_tabthree_checkbox_captions');
delete_site_option('mmode_tabthree_checkbox_captions');
delete_option('mmode_tabthree_checkbox_markers');
delete_site_option('mmode_tabthree_checkbox_markers');
delete_option('mmode_tabthree_checkbox_arrows');
delete_site_option('mmode_tabthree_checkbox_arrows');
delete_option('mmode_tabthree_checkbox_rotation');
delete_site_option('mmode_tabthree_checkbox_rotation');
delete_option('mmode_tabthree_animation');
delete_site_option('mmode_tabthree_animation');
delete_option('mmode_tabthree_rotation');
delete_site_option('mmode_tabthree_rotation');
delete_option('mmode_tab1_mmode_text');
delete_site_option('mmode_tab1_mmode_text');
delete_option('mmode_tab2_mmode_css');
delete_site_option('mmode_tab2_mmode_css');
delete_option('mmode_tabthree_mmode_youtube');
delete_site_option('mmode_tabthree_mmode_youtube');
delete_option('mmode_tabthree_mmode_twitter');
delete_site_option('mmode_tabthree_mmode_twitter');
delete_option('mmode_tabthree_mmode_facebook');
delete_site_option('mmode_tabthree_mmode_facebook');
delete_option('mmode_tabthree_mmode_vimeo');
delete_site_option('mmode_tabthree_mmode_vimeo');
delete_option('mmode_tabthree_mmode_email');
delete_site_option('mmode_tabthree_mmode_email');

