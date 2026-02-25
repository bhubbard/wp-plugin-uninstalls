<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('OPTIONS');
delete_site_option('OPTIONS');
delete_option('use_style_where');
delete_site_option('use_style_where');
delete_option('use_style_where2');
delete_site_option('use_style_where2');
delete_option('gwi_sub');
delete_site_option('gwi_sub');
delete_option('gwi_font');
delete_site_option('gwi_font');
delete_option('gwi_sl1');
delete_site_option('gwi_sl1');
delete_option('gwi_prvw');
delete_site_option('gwi_prvw');
delete_option('gwi_my_font');
delete_site_option('gwi_my_font');
delete_option('gwi_own');
delete_site_option('gwi_own');
delete_option('gwi_own_font');
delete_site_option('gwi_own_font');

