<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('unn_noindex_date');
delete_site_option('unn_noindex_date');
delete_option('unn_noindex_search');
delete_site_option('unn_noindex_search');
delete_option('unn_noindex_pages');
delete_site_option('unn_noindex_pages');
delete_option('unn_noindex_cat');
delete_site_option('unn_noindex_cat');
delete_option('unn_noindex_tags');
delete_site_option('unn_noindex_tags');
delete_option('unn_noindex_auth');
delete_site_option('unn_noindex_auth');
delete_option('unn_noindex_paged');
delete_site_option('unn_noindex_paged');
delete_option('unn_noindex_admin');
delete_site_option('unn_noindex_admin');
delete_option('unn_noindex_login');
delete_site_option('unn_noindex_login');
delete_option('unn_nofollow_pages');
delete_site_option('unn_nofollow_pages');
delete_option('unn_nofollow_archives');
delete_site_option('unn_nofollow_archives');
delete_option('unn_nofollow_cats');
delete_site_option('unn_nofollow_cats');
delete_option('unn_nofollow_register');
delete_site_option('unn_nofollow_register');
delete_option('unn_nofollow_login');
delete_site_option('unn_nofollow_login');

