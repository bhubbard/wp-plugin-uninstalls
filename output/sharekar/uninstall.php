<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sharekar_webshare');
delete_site_option('sharekar_webshare');
delete_option('sharekar_version');
delete_site_option('sharekar_version');
delete_option('sharekar_settings');
delete_site_option('sharekar_settings');
delete_option('sharekar_float');
delete_site_option('sharekar_float');
delete_option('sharekar_conf');
delete_site_option('sharekar_conf');

