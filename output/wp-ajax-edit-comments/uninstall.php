<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ajax-edit-comments_security_key_count');
delete_site_option('ajax-edit-comments_security_key_count');
delete_option('wordpress_api_key');
delete_site_option('wordpress_api_key');
delete_option('aec_dependency_upload_dir');
delete_site_option('aec_dependency_upload_dir');
delete_option('WPAjaxEditAuthoruserOptions');
delete_site_option('WPAjaxEditAuthoruserOptions');
delete_option('WPAjaxEditAuthoruser_options');
delete_site_option('WPAjaxEditAuthoruser_options');
delete_option('WPAjaxEditComments20');
delete_site_option('WPAjaxEditComments20');

