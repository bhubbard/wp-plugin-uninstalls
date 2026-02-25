<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nskw_ogp_id_select');
delete_site_option('nskw_ogp_id_select');
delete_option('nskw_ogp_img');
delete_site_option('nskw_ogp_img');
delete_option('nskw_ogp_app_id');
delete_site_option('nskw_ogp_app_id');

