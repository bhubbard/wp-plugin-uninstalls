<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cfptwc_custom_fields');
delete_site_option('cfptwc_custom_fields');
delete_option('themeqx_cfptwc_option');
delete_site_option('themeqx_cfptwc_option');
delete_option('themeqx_cfptwc_version');
delete_site_option('themeqx_cfptwc_version');

