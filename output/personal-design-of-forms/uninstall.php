<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('select-on');
delete_site_option('select-on');
delete_option('custom-select-class');
delete_site_option('custom-select-class');
delete_option('custom-select-fone-color');
delete_site_option('custom-select-fone-color');
delete_option('custom-select-border-color');
delete_site_option('custom-select-border-color');
delete_option('custom-select-border');
delete_site_option('custom-select-border');
delete_option('custom-select-padding');
delete_site_option('custom-select-padding');
delete_option('custom-select-text-color');
delete_site_option('custom-select-text-color');
delete_option('custom-select-fone-active-color');
delete_site_option('custom-select-fone-active-color');
delete_option('custom-select-text-hover-color');
delete_site_option('custom-select-text-hover-color');
delete_option('custom-select-fone-hover-color');
delete_site_option('custom-select-fone-hover-color');
delete_option('custom-select-form-class');
delete_site_option('custom-select-form-class');
delete_option('custom-select-css');
delete_site_option('custom-select-css');
delete_option('solass_wp_admin_footer_text');
delete_site_option('solass_wp_admin_footer_text');

