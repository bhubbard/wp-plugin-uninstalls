<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ghl_jotform_webhook_secret');
delete_site_option('ghl_jotform_webhook_secret');
delete_option('ghljotform_clnt_id');
delete_site_option('ghljotform_clnt_id');
delete_option('ghljotform_clnt_scrt');
delete_site_option('ghljotform_clnt_scrt');
delete_option('ghl_jotform_api');
delete_site_option('ghl_jotform_api');
delete_option('ghljotform_oauth_state');
delete_site_option('ghljotform_oauth_state');

