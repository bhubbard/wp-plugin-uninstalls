<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('isms_authform_account_settings');
delete_site_option('isms_authform_account_settings');
delete_option('isms_auth_account_settings');
delete_site_option('isms_auth_account_settings');

