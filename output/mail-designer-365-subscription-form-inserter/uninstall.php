<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('maildesigner365-subscription-form-api-key');
delete_site_option('maildesigner365-subscription-form-api-key');
delete_option('maildesigner365-subscription-form-api-secret');
delete_site_option('maildesigner365-subscription-form-api-secret');
delete_option('maildesigner365-subscription-form-forms');
delete_site_option('maildesigner365-subscription-form-forms');
delete_option('maildesigner365-subscription-form-form');
delete_site_option('maildesigner365-subscription-form-form');

