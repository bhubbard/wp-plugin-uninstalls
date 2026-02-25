<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('user_posvirtual');
delete_site_option('user_posvirtual');
delete_option('password_posvirtual');
delete_site_option('password_posvirtual');
delete_option('token_posvirtual');
delete_site_option('token_posvirtual');
delete_option('jwt_posvirtual');
delete_site_option('jwt_posvirtual');
delete_option('mid_posvirtual');
delete_site_option('mid_posvirtual');
delete_option('environment_dev_cyb_posvirtual');
delete_site_option('environment_dev_cyb_posvirtual');
delete_option('vc_json_posvirtual');
delete_site_option('vc_json_posvirtual');
delete_option('name_enterprise_posvirtual');
delete_site_option('name_enterprise_posvirtual');
delete_option('currency_posvirtual');
delete_site_option('currency_posvirtual');
delete_option('activation_date_posvirtual');
delete_site_option('activation_date_posvirtual');
delete_option('creation_date_posvirtual');
delete_site_option('creation_date_posvirtual');

