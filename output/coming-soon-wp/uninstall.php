<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dazz_cs_contact');
delete_site_option('dazz_cs_contact');
delete_option('dazz_cs_dashboard');
delete_site_option('dazz_cs_dashboard');
delete_option('dazz_cs_design');
delete_site_option('dazz_cs_design');
delete_option('dazz_cs_seo');
delete_site_option('dazz_cs_seo');
delete_option('dazz_cs_social');
delete_site_option('dazz_cs_social');

