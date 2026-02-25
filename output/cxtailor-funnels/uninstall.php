<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cxtf_username');
delete_site_option('cxtf_username');
delete_option('cxtf_password');
delete_site_option('cxtf_password');
delete_option('cxtf_access_token');
delete_site_option('cxtf_access_token');
delete_option('cxtf_workspace_id');
delete_site_option('cxtf_workspace_id');
delete_option('cxtf_user_id');
delete_site_option('cxtf_user_id');
delete_option('cxtf_token_updated_at');
delete_site_option('cxtf_token_updated_at');

