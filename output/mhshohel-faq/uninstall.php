<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('faq_custom_text');
delete_site_option('faq_custom_text');
delete_option('count');
delete_site_option('count');
delete_option('icon_style');
delete_site_option('icon_style');
delete_option('load_place');
delete_site_option('load_place');
delete_option('faq_acc_custom_css');
delete_site_option('faq_acc_custom_css');
delete_option('is_mhshohel_faq_activated');
delete_site_option('is_mhshohel_faq_activated');

