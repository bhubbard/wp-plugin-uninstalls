<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('smm_version');
delete_site_option('smm_version');
delete_option('disable_smm');
delete_site_option('disable_smm');
delete_option('smm_heading');
delete_site_option('smm_heading');
delete_option('smm_subheading');
delete_site_option('smm_subheading');
delete_option('smm_image');
delete_site_option('smm_image');
delete_option('smm_roles');
delete_site_option('smm_roles');
delete_option('smm_html');
delete_site_option('smm_html');
delete_option('smm_countdown');
delete_site_option('smm_countdown');
delete_option('smm_donate_popup');
delete_site_option('smm_donate_popup');

