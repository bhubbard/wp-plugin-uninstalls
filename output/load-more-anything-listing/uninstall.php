<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('lmal_wrapper_class');
delete_site_option('lmal_wrapper_class');
delete_option('lmal_load_class');
delete_site_option('lmal_load_class');
delete_option('lmal_item_show');
delete_site_option('lmal_item_show');
delete_option('lmal_item_load');
delete_site_option('lmal_item_load');
delete_option('lmal_item_pagination');
delete_site_option('lmal_item_pagination');
delete_option('lmal_load_label');
delete_site_option('lmal_load_label');
delete_option('asr_lmal_css_class');
delete_site_option('asr_lmal_css_class');
delete_option('lmal_load_classa');
delete_site_option('lmal_load_classa');
delete_option('lmal_load_classb');
delete_site_option('lmal_load_classb');
delete_option('lmal_load_classc');
delete_site_option('lmal_load_classc');
delete_option('lmal_load_classd');
delete_site_option('lmal_load_classd');
delete_option('lmal_css_class');
delete_site_option('lmal_css_class');

