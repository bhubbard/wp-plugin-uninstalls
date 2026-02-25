<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('edd_settings');
delete_site_option('edd_settings');
delete_option('eddms_force_refresh');
delete_site_option('eddms_force_refresh');

// Delete Transients
delete_transient('eddms_mailchimp_mailinglist');
delete_site_transient('eddms_mailchimp_mailinglist');
delete_transient('eddms_mailchimp_stats');
delete_site_transient('eddms_mailchimp_stats');

