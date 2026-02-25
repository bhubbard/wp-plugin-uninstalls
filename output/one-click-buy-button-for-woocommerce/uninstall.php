<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('one_click_buy_btn_options');
delete_site_option('one_click_buy_btn_options');
delete_option('one_click_option_name');
delete_site_option('one_click_option_name');

