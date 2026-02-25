<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dt_cpanel_key');
delete_site_option('dt_cpanel_key');
delete_option('dt_cpanel_settings');
delete_site_option('dt_cpanel_settings');
delete_option('dt_cpanel_domains');
delete_site_option('dt_cpanel_domains');
delete_option('cpanel_key');
delete_site_option('cpanel_key');
delete_option('cpanel_settings');
delete_site_option('cpanel_settings');
delete_option('cpanel_domains');
delete_site_option('cpanel_domains');

