<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acf_wysiwyg_cl_settings');
delete_site_option('acf_wysiwyg_cl_settings');
delete_option('acf_wysiwyg_cl_tracking_optin');
delete_site_option('acf_wysiwyg_cl_tracking_optin');
delete_option('acf_wysiwyg_cl__plugin_version');
delete_site_option('acf_wysiwyg_cl__plugin_version');
delete_option('acf_wysiwyg_cl_plugin_version');
delete_site_option('acf_wysiwyg_cl_plugin_version');
delete_option('acf_wysiwyg_cl_global_limit');
delete_site_option('acf_wysiwyg_cl_global_limit');

