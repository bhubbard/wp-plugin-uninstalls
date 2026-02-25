<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('st_can_remove_wordpress_logo');
delete_site_option('st_can_remove_wordpress_logo');
delete_option('st_can_remove_dashboard_menu');
delete_site_option('st_can_remove_dashboard_menu');
delete_option('st_can_remove_admin_toolbar');
delete_site_option('st_can_remove_admin_toolbar');
delete_option('st_can_remove_contextual_help_link');
delete_site_option('st_can_remove_contextual_help_link');
delete_option('st_can_remove_dash_widgets');
delete_site_option('st_can_remove_dash_widgets');
delete_option('st_can_remove_wordpress_version');
delete_site_option('st_can_remove_wordpress_version');
delete_option('st_footer_message');
delete_site_option('st_footer_message');
delete_option('st_can_contributor_upload_files');
delete_site_option('st_can_contributor_upload_files');
delete_option('st_can_contributor_view_others_post');
delete_site_option('st_can_contributor_view_others_post');
delete_option('st_can_notify_admin_on_login');
delete_site_option('st_can_notify_admin_on_login');
delete_option('st_notify_email_message');
delete_site_option('st_notify_email_message');

