<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pinglunla_seo');
delete_site_option('pinglunla_seo');
delete_option('pinglunla_exported_cid');
delete_site_option('pinglunla_exported_cid');
delete_option('pinglunla_cc0');
delete_site_option('pinglunla_cc0');
delete_option('pinglunla_cc1');
delete_site_option('pinglunla_cc1');
delete_option('pinglunla_sid');
delete_site_option('pinglunla_sid');

