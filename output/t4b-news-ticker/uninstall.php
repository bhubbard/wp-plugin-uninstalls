<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('t4bnt_review_nt');
delete_site_option('t4bnt_review_nt');
delete_option('t4bnt_activation_time');
delete_site_option('t4bnt_activation_time');
delete_option('t4bnt_plugin_version');
delete_site_option('t4bnt_plugin_version');
delete_option('t4bnt_general');
delete_site_option('t4bnt_general');
delete_option('t4bnt_content');
delete_site_option('t4bnt_content');
delete_option('t4bnt_advance');
delete_site_option('t4bnt_advance');

