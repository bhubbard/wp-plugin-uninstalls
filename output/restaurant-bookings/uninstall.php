<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ae_access_token');
delete_site_option('ae_access_token');
delete_option('dm_redirect_admin');
delete_site_option('dm_redirect_admin');
delete_option('rb_skin');
delete_site_option('rb_skin');
delete_option('rb_exclude_bootstrap_js');
delete_site_option('rb_exclude_bootstrap_js');
delete_option('rb_exclude_bootstrap_css');
delete_site_option('rb_exclude_bootstrap_css');

