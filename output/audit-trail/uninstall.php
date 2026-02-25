<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('audit_methods');
delete_site_option('audit_methods');
delete_option('audit_trail');
delete_site_option('audit_trail');
delete_option('audit_expiry');
delete_site_option('audit_expiry');
delete_option('audit_post');
delete_site_option('audit_post');
delete_option('audit_post_order');
delete_site_option('audit_post_order');
delete_option('audit_version');
delete_site_option('audit_version');
delete_option('audit_ignore');
delete_site_option('audit_ignore');
delete_option('audit_support');
delete_site_option('audit_support');
delete_option('audit_error_log');
delete_site_option('audit_error_log');

