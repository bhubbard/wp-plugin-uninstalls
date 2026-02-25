<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wcpq_gen_stngs');
delete_site_option('wcpq_gen_stngs');
delete_option('wcpq_admin_welcome_options');
delete_site_option('wcpq_admin_welcome_options');
delete_option('wcpq_email_settings');
delete_site_option('wcpq_email_settings');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

