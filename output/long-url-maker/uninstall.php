<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kpcode_version_wp');
delete_site_option('kpcode_version_wp');
delete_option('kpcode_longurlmaker_version');
delete_site_option('kpcode_longurlmaker_version');
delete_option('c_version_wp');
delete_site_option('c_version_wp');

