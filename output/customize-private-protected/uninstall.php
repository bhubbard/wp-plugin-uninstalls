<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cpp_text_intro');
delete_site_option('cpp_text_intro');
delete_option('cpp_hide_prefix');
delete_site_option('cpp_hide_prefix');
delete_option('cpp_prefix_protected');
delete_site_option('cpp_prefix_protected');
delete_option('cpp_prefix_private');
delete_site_option('cpp_prefix_private');
delete_option('cpp_use_default_form');
delete_site_option('cpp_use_default_form');
delete_option('cpp_label_text');
delete_site_option('cpp_label_text');
delete_option('cpp_button_text');
delete_site_option('cpp_button_text');
delete_option('cpp_button_y_padding');
delete_site_option('cpp_button_y_padding');
delete_option('cpp_button_x_padding');
delete_site_option('cpp_button_x_padding');

