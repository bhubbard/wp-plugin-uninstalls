<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cfpfw_enable');
delete_site_option('cfpfw_enable');
delete_option('cfpfw_product');
delete_site_option('cfpfw_product');
delete_option('pcfpfw_zero');
delete_site_option('pcfpfw_zero');
delete_option('pcfpfw_status');
delete_site_option('pcfpfw_status');
delete_option('cfpfw_price_enable');
delete_site_option('cfpfw_price_enable');
delete_option('cfpfw_min_price');
delete_site_option('cfpfw_min_price');
delete_option('cfpfw_max_price');
delete_site_option('cfpfw_max_price');
delete_option('cfpfw_change_text');
delete_site_option('cfpfw_change_text');

