<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stbar_bd');
delete_site_option('stbar_bd');
delete_option('stbar_bd_tel');
delete_site_option('stbar_bd_tel');
delete_option('stbar_bd_laptop');
delete_site_option('stbar_bd_laptop');
delete_option('stbar_bd_pro');
delete_site_option('stbar_bd_pro');
delete_option('stbar_view');
delete_site_option('stbar_view');

