<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cas_widget_domain');
delete_site_option('cas_widget_domain');
delete_option('cas_widget_type');
delete_site_option('cas_widget_type');
delete_option('cas_widget_pos');
delete_site_option('cas_widget_pos');
delete_option('cas_widget_label');
delete_site_option('cas_widget_label');
delete_option('cas_widget_theme');
delete_site_option('cas_widget_theme');
delete_option('cas_widget_lang');
delete_site_option('cas_widget_lang');
delete_option('cas_widget_lang_id');
delete_site_option('cas_widget_lang_id');
delete_option('casengo_do_activation_redirect');
delete_site_option('casengo_do_activation_redirect');

