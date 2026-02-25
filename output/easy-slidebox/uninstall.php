<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slidebox_css_title');
delete_site_option('slidebox_css_title');
delete_option('slidebox_css_content');
delete_site_option('slidebox_css_content');
delete_option('slidebox_img_more');
delete_site_option('slidebox_img_more');
delete_option('slidebox_img_less');
delete_site_option('slidebox_img_less');

