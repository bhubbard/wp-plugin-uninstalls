<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('void_wb_pro_notice');
delete_site_option('void_wb_pro_notice');
delete_option('void_wbwhmcse_elementor_activation_time');
delete_site_option('void_wbwhmcse_elementor_activation_time');
delete_option('void_wbwhmcse_spare_me');
delete_site_option('void_wbwhmcse_spare_me');

