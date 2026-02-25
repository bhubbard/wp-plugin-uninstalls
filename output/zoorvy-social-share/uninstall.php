<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('zoorvy-social-share-facebook');
delete_site_option('zoorvy-social-share-facebook');
delete_option('zoorvy-social-share-twitter');
delete_site_option('zoorvy-social-share-twitter');
delete_option('zoorvy-social-share-linkedin');
delete_site_option('zoorvy-social-share-linkedin');
delete_option('zoorvy-social-share-reddit');
delete_site_option('zoorvy-social-share-reddit');
delete_option('zoorvy-social-share-gplus');
delete_site_option('zoorvy-social-share-gplus');
delete_option('zoorvy-social-share-pocket');
delete_site_option('zoorvy-social-share-pocket');
delete_option('zoorvy-social-share-top');
delete_site_option('zoorvy-social-share-top');
delete_option('zoorvy-social-share-bottom');
delete_site_option('zoorvy-social-share-bottom');
delete_option('zoorvy-social-share-page');
delete_site_option('zoorvy-social-share-page');

