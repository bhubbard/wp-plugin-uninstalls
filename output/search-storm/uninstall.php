<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('searchstorm_category1');
delete_site_option('searchstorm_category1');
delete_option('searchstorm_category2');
delete_site_option('searchstorm_category2');
delete_option('searchstorm_category3');
delete_site_option('searchstorm_category3');
delete_option('searchstorm_category4');
delete_site_option('searchstorm_category4');
delete_option('searchstorm_css');
delete_site_option('searchstorm_css');

