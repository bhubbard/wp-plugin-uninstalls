<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('p2mixi_username');
delete_site_option('p2mixi_username');
delete_option('p2mixi_password');
delete_site_option('p2mixi_password');
delete_option('p2mixi_id');
delete_site_option('p2mixi_id');
delete_option('p2mixi_header_default');
delete_site_option('p2mixi_header_default');
delete_option('p2mixi_footer_default');
delete_site_option('p2mixi_footer_default');
delete_option('p2mixi_default');
delete_site_option('p2mixi_default');

