<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('moecdn_options');
delete_site_option('moecdn_options');
delete_option('moecdn_collect');
delete_site_option('moecdn_collect');
delete_option('moecdn_activete');
delete_site_option('moecdn_activete');

