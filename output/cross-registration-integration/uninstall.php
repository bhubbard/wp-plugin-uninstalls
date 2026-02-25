<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cri_transurl');
delete_site_option('cri_transurl');
delete_option('cri_encrypt');
delete_site_option('cri_encrypt');
delete_option('cri_special_params');
delete_site_option('cri_special_params');
delete_option('cri_wp_username');
delete_site_option('cri_wp_username');
delete_option('cri_wp_username_as');
delete_site_option('cri_wp_username_as');
delete_option('cri_wp_email');
delete_site_option('cri_wp_email');
delete_option('cri_wp_email_as');
delete_site_option('cri_wp_email_as');
delete_option('cri_wp_password');
delete_site_option('cri_wp_password');
delete_option('cri_wp_password_as');
delete_site_option('cri_wp_password_as');
delete_option('cri_bp_username');
delete_site_option('cri_bp_username');
delete_option('cri_bp_username_as');
delete_site_option('cri_bp_username_as');
delete_option('cri_bp_email');
delete_site_option('cri_bp_email');
delete_option('cri_bp_email_as');
delete_site_option('cri_bp_email_as');
delete_option('cri_bp_password');
delete_site_option('cri_bp_password');
delete_option('cri_bp_password_as');
delete_site_option('cri_bp_password_as');

