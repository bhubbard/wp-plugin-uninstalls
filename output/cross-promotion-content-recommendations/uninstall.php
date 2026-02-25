<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('engageya_params_layout_type_id');
delete_site_option('engageya_params_layout_type_id');
delete_option('engageya_params_opt');
delete_site_option('engageya_params_opt');
delete_option('engageya_params_token');
delete_site_option('engageya_params_token');
delete_option('engageya_params_user_id');
delete_site_option('engageya_params_user_id');

