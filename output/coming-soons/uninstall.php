<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rw_cs_mode');
delete_site_option('rw_cs_mode');
delete_option('rw_cs_background');
delete_site_option('rw_cs_background');
delete_option('rw_cs_button');
delete_site_option('rw_cs_button');
delete_option('rw_cs_content');
delete_site_option('rw_cs_content');
delete_option('rw_cs_countdown');
delete_site_option('rw_cs_countdown');
delete_option('rw_cs_description');
delete_site_option('rw_cs_description');
delete_option('rw_cs_fic');
delete_site_option('rw_cs_fic');
delete_option('rw_cs_footer');
delete_site_option('rw_cs_footer');
delete_option('rw_cs_heading');
delete_site_option('rw_cs_heading');
delete_option('rw_cs_info');
delete_site_option('rw_cs_info');
delete_option('rw_cs_loader');
delete_site_option('rw_cs_loader');
delete_option('rw_cs_logo');
delete_site_option('rw_cs_logo');
delete_option('rw_cs_order');
delete_site_option('rw_cs_order');
delete_option('rw_cs_seo');
delete_site_option('rw_cs_seo');
delete_option('rw_cs_social');
delete_site_option('rw_cs_social');

