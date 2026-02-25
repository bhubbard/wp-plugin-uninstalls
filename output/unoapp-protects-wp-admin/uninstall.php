<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('unopwa_active');
delete_site_option('unopwa_active');
delete_option('unopwa_before_rewrite_text');
delete_site_option('unopwa_before_rewrite_text');
delete_option('unopwa_ips');
delete_site_option('unopwa_ips');
delete_option('unopwa_preview');
delete_site_option('unopwa_preview');
delete_option('unopwa_rewrite_text');
delete_site_option('unopwa_rewrite_text');
delete_option('unopwa_logout');
delete_site_option('unopwa_logout');

