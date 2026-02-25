<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cart66_to_mailchimp_apikey');
delete_site_option('cart66_to_mailchimp_apikey');
delete_option('cart66_to_mailchimp_listid');
delete_site_option('cart66_to_mailchimp_listid');

