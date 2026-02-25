<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hiorg_account');
delete_site_option('hiorg_account');
delete_option('hiorg_anzahl');
delete_site_option('hiorg_anzahl');
delete_option('hiorg_monate');
delete_site_option('hiorg_monate');
delete_option('hiorg_link');
delete_site_option('hiorg_link');

