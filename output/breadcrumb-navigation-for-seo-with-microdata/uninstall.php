<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('breadcrumb_text');
delete_site_option('breadcrumb_text');
delete_option('bdc_txt_color');
delete_site_option('bdc_txt_color');
delete_option('bread_col');
delete_site_option('bread_col');
delete_option('act_col');
delete_site_option('act_col');
delete_option('home_title');
delete_site_option('home_title');
delete_option('theme');
delete_site_option('theme');

