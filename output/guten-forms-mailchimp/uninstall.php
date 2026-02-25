<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cwp__mailchimp__api_key');
delete_site_option('cwp__mailchimp__api_key');
delete_option('cwp__enable__mailchimp');
delete_site_option('cwp__enable__mailchimp');

