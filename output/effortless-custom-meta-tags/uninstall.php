<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elcmt_csp');
delete_site_option('elcmt_csp');
delete_option('elcmt_description');
delete_site_option('elcmt_description');
delete_option('elcmt_og_enabled');
delete_site_option('elcmt_og_enabled');
delete_option('elcmt_og_title');
delete_site_option('elcmt_og_title');
delete_option('elcmt_og_description');
delete_site_option('elcmt_og_description');
delete_option('elcmt_og_image');
delete_site_option('elcmt_og_image');
delete_option('elcmt_og_url');
delete_site_option('elcmt_og_url');
delete_option('elcmt_twitter_enabled');
delete_site_option('elcmt_twitter_enabled');
delete_option('elcmt_twitter_title');
delete_site_option('elcmt_twitter_title');
delete_option('elcmt_twitter_description');
delete_site_option('elcmt_twitter_description');
delete_option('elcmt_twitter_image');
delete_site_option('elcmt_twitter_image');
delete_option('elcmt_twitter_card');
delete_site_option('elcmt_twitter_card');

