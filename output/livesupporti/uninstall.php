<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('liveSupportiLicense');
delete_site_option('liveSupportiLicense');
delete_option('liveSupportiSkin');
delete_site_option('liveSupportiSkin');
delete_option('liveSupportiEmail');
delete_site_option('liveSupportiEmail');
delete_option('liveSupportiPassword');
delete_site_option('liveSupportiPassword');
delete_option('redirectToLiveSupportiAdminPage');
delete_site_option('redirectToLiveSupportiAdminPage');

