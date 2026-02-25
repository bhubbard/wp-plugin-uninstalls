<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ses_by_hosting_nl_api_key');
delete_site_option('ses_by_hosting_nl_api_key');
delete_option('ses_by_hosting_nl_from_email');
delete_site_option('ses_by_hosting_nl_from_email');
delete_option('ses_by_hosting_nl_from_name');
delete_site_option('ses_by_hosting_nl_from_name');

