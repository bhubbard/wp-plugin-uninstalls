<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cfc_delivery');
delete_site_option('cfc_delivery');
delete_option('cfc_key');
delete_site_option('cfc_key');
delete_option('cfc_speed');
delete_site_option('cfc_speed');
delete_option('cfc_spam');
delete_site_option('cfc_spam');
delete_option('cfc_spam_message');
delete_site_option('cfc_spam_message');

