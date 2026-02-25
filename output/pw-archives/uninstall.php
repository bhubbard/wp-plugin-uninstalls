<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pw_archives_upgrade');
delete_site_option('pw_archives_upgrade');
delete_option('PW_Archives_options');
delete_site_option('PW_Archives_options');
delete_option('widget_pw_archives');
delete_site_option('widget_pw_archives');
delete_option('pw_archives');
delete_site_option('pw_archives');

// Delete Transients
delete_transient('PW_Alerts');
delete_site_transient('PW_Alerts');

