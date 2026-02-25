<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('srcpt_cpt');
delete_site_option('srcpt_cpt');
delete_option('srcpt_tax');
delete_site_option('srcpt_tax');
delete_option('srcpt_meta');
delete_site_option('srcpt_meta');
delete_option('srcpt_opt_meta');
delete_site_option('srcpt_opt_meta');
delete_option('metaid');
delete_site_option('metaid');
delete_option('type');
delete_site_option('type');

