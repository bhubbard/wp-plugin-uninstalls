<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('pricerunner_feed_hash');
delete_site_option('pricerunner_feed_hash');
delete_option('pricerunner_feed_active');
delete_site_option('pricerunner_feed_active');
delete_option('pricerunner_feed_url');
delete_site_option('pricerunner_feed_url');
delete_option('pricerunner_contact_domain');
delete_site_option('pricerunner_contact_domain');
delete_option('pricerunner_contact_name');
delete_site_option('pricerunner_contact_name');
delete_option('pricerunner_contact_email');
delete_site_option('pricerunner_contact_email');
delete_option('pricerunner_contact_phone');
delete_site_option('pricerunner_contact_phone');

