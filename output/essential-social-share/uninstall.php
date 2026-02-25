<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ess_twitter_username');
delete_site_option('ess_twitter_username');
delete_option('ess_facebook');
delete_site_option('ess_facebook');
delete_option('ess_twitter');
delete_site_option('ess_twitter');
delete_option('ess_google');
delete_site_option('ess_google');
delete_option('ess_pinterest');
delete_site_option('ess_pinterest');
delete_option('ess_linked_in');
delete_site_option('ess_linked_in');
delete_option('ess_email');
delete_site_option('ess_email');
delete_option('ess_font_awe');
delete_site_option('ess_font_awe');

