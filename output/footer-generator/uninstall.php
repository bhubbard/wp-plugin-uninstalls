<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('item1-link');
delete_site_option('item1-link');
delete_option('item1-icon');
delete_site_option('item1-icon');
delete_option('item1-title');
delete_site_option('item1-title');
delete_option('item2-link');
delete_site_option('item2-link');
delete_option('item2-icon');
delete_site_option('item2-icon');
delete_option('item2-title');
delete_site_option('item2-title');
delete_option('item3-link');
delete_site_option('item3-link');
delete_option('item3-icon');
delete_site_option('item3-icon');
delete_option('item3-title');
delete_site_option('item3-title');
delete_option('item4-link');
delete_site_option('item4-link');
delete_option('item4-icon');
delete_site_option('item4-icon');
delete_option('item4-title');
delete_site_option('item4-title');
delete_option('item5-link');
delete_site_option('item5-link');
delete_option('item5-icon');
delete_site_option('item5-icon');
delete_option('item5-title');
delete_site_option('item5-title');
delete_option('text-size');
delete_site_option('text-size');
delete_option('icon-color');
delete_site_option('icon-color');
delete_option('background-color');
delete_site_option('background-color');
delete_option('show-after');
delete_site_option('show-after');
delete_option('padding-top-bottom');
delete_site_option('padding-top-bottom');
delete_option('item1-select');
delete_site_option('item1-select');
delete_option('item2-select');
delete_site_option('item2-select');
delete_option('item3-select');
delete_site_option('item3-select');
delete_option('item4-select');
delete_site_option('item4-select');
delete_option('item5-select');
delete_site_option('item5-select');
delete_option('view-port-size');
delete_site_option('view-port-size');
delete_option('disabled-footer');
delete_site_option('disabled-footer');

