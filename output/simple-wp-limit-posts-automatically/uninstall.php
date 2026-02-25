<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slpa_post_wordcut');
delete_site_option('slpa_post_wordcut');
delete_option('slpa_post_letters');
delete_site_option('slpa_post_letters');
delete_option('slpa_post_linktext');
delete_site_option('slpa_post_linktext');
delete_option('slpa_post_ending');
delete_site_option('slpa_post_ending');
delete_option('slpa_post_home');
delete_site_option('slpa_post_home');
delete_option('slpa_post_category');
delete_site_option('slpa_post_category');
delete_option('slpa_post_archive');
delete_site_option('slpa_post_archive');
delete_option('slpa_post_search');
delete_site_option('slpa_post_search');
delete_option('slpa_striptags');
delete_site_option('slpa_striptags');

