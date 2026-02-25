<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lbk_fc_gfx');
delete_site_option('lbk_fc_gfx');
delete_option('lbk_fc_phone');
delete_site_option('lbk_fc_phone');
delete_option('lbk_fc_phone_show');
delete_site_option('lbk_fc_phone_show');
delete_option('lbk_fc_zalo');
delete_site_option('lbk_fc_zalo');
delete_option('lbk_fc_zalo_show');
delete_site_option('lbk_fc_zalo_show');
delete_option('lbk_fc_mess');
delete_site_option('lbk_fc_mess');
delete_option('lbk_fc_mess_show');
delete_site_option('lbk_fc_mess_show');
delete_option('lbk_fc_fb');
delete_site_option('lbk_fc_fb');
delete_option('lbk_fc_fb_show');
delete_site_option('lbk_fc_fb_show');
delete_option('lbk_fc_insta');
delete_site_option('lbk_fc_insta');
delete_option('lbk_fc_insta_show');
delete_site_option('lbk_fc_insta_show');
delete_option('lbk_fc_twitter');
delete_site_option('lbk_fc_twitter');
delete_option('lbk_fc_twitter_show');
delete_site_option('lbk_fc_twitter_show');
delete_option('lbk_fc_position');
delete_site_option('lbk_fc_position');
delete_option('lbk_fc_lightbox');
delete_site_option('lbk_fc_lightbox');
delete_option('lbk_fc_lightbox_show');
delete_site_option('lbk_fc_lightbox_show');
delete_option('lbk_fc_link');
delete_site_option('lbk_fc_link');
delete_option('lbk_fc_link_show');
delete_site_option('lbk_fc_link_show');

