<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Activated_Plugin');
delete_site_option('Activated_Plugin');
delete_option('wp3dtv_envato_purchase_code_validation');
delete_site_option('wp3dtv_envato_purchase_code_validation');

