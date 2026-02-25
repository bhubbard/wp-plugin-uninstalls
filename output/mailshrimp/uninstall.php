<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailchimp-current-campaign');
delete_site_option('mailchimp-current-campaign');
delete_option('mailchimp-current-template');
delete_site_option('mailchimp-current-template');
delete_option('mailshrimp_google_analytics');
delete_site_option('mailshrimp_google_analytics');
delete_option('mailchimp-api-key');
delete_site_option('mailchimp-api-key');

