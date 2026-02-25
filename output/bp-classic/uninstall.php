<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('_bp_retain_bp_default');
delete_site_option('_bp_retain_bp_default');
delete_option('template_root');
delete_site_option('template_root');
delete_option('stylesheet_root');
delete_site_option('stylesheet_root');

// Delete Transients
delete_transient('bp_classic_show_notice');
delete_site_transient('bp_classic_show_notice');
delete_transient('theme_roots');
delete_site_transient('theme_roots');

