<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('acs-text1');
delete_site_option('acs-text1');
delete_option('acs-text2');
delete_site_option('acs-text2');
delete_option('acs-text3');
delete_site_option('acs-text3');
delete_option('acs-text4');
delete_site_option('acs-text4');
delete_option('acs-text5');
delete_site_option('acs-text5');
delete_option('acs-text6');
delete_site_option('acs-text6');
delete_option('acs-text7');
delete_site_option('acs-text7');
delete_option('acs-text8');
delete_site_option('acs-text8');
delete_option('acs-text9');
delete_site_option('acs-text9');
delete_option('acs-text10');
delete_site_option('acs-text10');
delete_option('acs-active');
delete_site_option('acs-active');
delete_option('acs-admin-level');
delete_site_option('acs-admin-level');
delete_option('acs-custom-lang');
delete_site_option('acs-custom-lang');
delete_option('acs-language');
delete_site_option('acs-language');

