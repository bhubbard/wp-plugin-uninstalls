<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('newsmax_nm_client_id');
delete_site_option('newsmax_nm_client_id');
delete_option('newsmax_nm_template');
delete_site_option('newsmax_nm_template');
delete_option('newsmax_nm_article_selector');
delete_site_option('newsmax_nm_article_selector');
delete_option('newsmax_nm_cloudflare_async');
delete_site_option('newsmax_nm_cloudflare_async');

