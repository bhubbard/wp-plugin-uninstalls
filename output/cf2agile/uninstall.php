<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cf2agile__activecollab__org_name');
delete_site_option('cf2agile__activecollab__org_name');
delete_option('cf2agile__activecollab__app_name');
delete_site_option('cf2agile__activecollab__app_name');
delete_option('cf2agile__activecollab__username');
delete_site_option('cf2agile__activecollab__username');
delete_option('cf2agile__activecollab__password');
delete_site_option('cf2agile__activecollab__password');
delete_option('cf2agile__activecollab__self_url');
delete_site_option('cf2agile__activecollab__self_url');

