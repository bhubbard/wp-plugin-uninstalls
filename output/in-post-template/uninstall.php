<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_ipt_content');
delete_site_option('wp_ipt_content');
delete_option('wp_ipt_alternate');
delete_site_option('wp_ipt_alternate');
delete_option('wp_ipt_nomark');
delete_site_option('wp_ipt_nomark');

