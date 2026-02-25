<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpv-voting-onoff');
delete_site_option('wpv-voting-onoff');
delete_option('wpv-allow-author-vote');
delete_site_option('wpv-allow-author-vote');
delete_option('wpv-voted-custom-txt');
delete_site_option('wpv-voted-custom-txt');
delete_option('wpv-vote-btn-custom-txt');
delete_site_option('wpv-vote-btn-custom-txt');
delete_option('wpv-custom-css');
delete_site_option('wpv-custom-css');
delete_option('wpv-voting-alert-msg');
delete_site_option('wpv-voting-alert-msg');
delete_option('wpv-allow-public-vote');
delete_site_option('wpv-allow-public-vote');
delete_option('wpv-voting-db-version');
delete_site_option('wpv-voting-db-version');
delete_option('wpv-top-voted-scount');
delete_site_option('wpv-top-voted-scount');

