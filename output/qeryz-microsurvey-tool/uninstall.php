<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qeryz_code');
delete_site_option('qeryz_code');
delete_option('qeryz_checkbox');
delete_site_option('qeryz_checkbox');
delete_option('qeryz_form_checkbox');
delete_site_option('qeryz_form_checkbox');
delete_option('qeryz-form-identity');
delete_site_option('qeryz-form-identity');
delete_option('qeryz_id');
delete_site_option('qeryz_id');
delete_option('qeryz_username');
delete_site_option('qeryz_username');
delete_option('qeryz_password');
delete_site_option('qeryz_password');
delete_option('QeryzIdentity');
delete_site_option('QeryzIdentity');
delete_option('qeryz_group');
delete_site_option('qeryz_group');

