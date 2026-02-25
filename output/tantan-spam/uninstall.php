<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tantan_spam_filter');
delete_site_option('tantan_spam_filter');
delete_option('tantan_spam_filter_recaptcha');
delete_site_option('tantan_spam_filter_recaptcha');
delete_option('tantan-spam-count');
delete_site_option('tantan-spam-count');
delete_option('update_plugins');
delete_site_option('update_plugins');

