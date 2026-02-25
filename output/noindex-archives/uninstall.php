<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ninfa_archives_noindex');
delete_site_option('ninfa_archives_noindex');
delete_option('ninfa_archives_nofollow');
delete_site_option('ninfa_archives_nofollow');
delete_option('ninfa_categories_noindex');
delete_site_option('ninfa_categories_noindex');
delete_option('ninfa_categories_nofollow');
delete_site_option('ninfa_categories_nofollow');
delete_option('ninfa_tags_noindex');
delete_site_option('ninfa_tags_noindex');
delete_option('ninfa_tags_nofollow');
delete_site_option('ninfa_tags_nofollow');

