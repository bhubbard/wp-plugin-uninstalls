<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('spx1mm_reca_site_key');
delete_site_option('spx1mm_reca_site_key');
delete_option('spx1mm_enabled');
delete_site_option('spx1mm_enabled');
delete_option('spx1mm_reca_secret_key');
delete_site_option('spx1mm_reca_secret_key');
delete_option('spx1mm_reca_score');
delete_site_option('spx1mm_reca_score');
delete_option('spx1mm_enabled_password');
delete_site_option('spx1mm_enabled_password');
delete_option('spx1mm_password');
delete_site_option('spx1mm_password');
delete_option('spx1mm_title');
delete_site_option('spx1mm_title');
delete_option('spx1mm_content');
delete_site_option('spx1mm_content');
delete_option('spx1mm_styles');
delete_site_option('spx1mm_styles');
delete_option('spx1mm_head');
delete_site_option('spx1mm_head');
delete_option('spx1mm_after_body');
delete_site_option('spx1mm_after_body');
delete_option('spx1mm_before_html');
delete_site_option('spx1mm_before_html');

