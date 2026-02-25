<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fpb_reg_form_fields');
delete_site_option('fpb_reg_form_fields');
delete_option('fronpobu_post_status');
delete_site_option('fronpobu_post_status');
delete_option('fronpobu_post_type');
delete_site_option('fronpobu_post_type');

// Delete Transients
delete_transient('fronpobu_plugin_version');
delete_site_transient('fronpobu_plugin_version');

