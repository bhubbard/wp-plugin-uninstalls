<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('message');
delete_site_option('message');
delete_option('text-color');
delete_site_option('text-color');
delete_option('background-color');
delete_site_option('background-color');
delete_option('padding');
delete_site_option('padding');
delete_option('border-radius');
delete_site_option('border-radius');
delete_option('border-width');
delete_site_option('border-width');
delete_option('border-style');
delete_site_option('border-style');
delete_option('copyrighte');
delete_site_option('copyrighte');
delete_option('melibu-plugin-typing-version');
delete_site_option('melibu-plugin-typing-version');
delete_option('melibu-plugin-typing-db-version');
delete_site_option('melibu-plugin-typing-db-version');
delete_option('copyright');
delete_site_option('copyright');
delete_option('melibu-plugin-typing-logo-get');
delete_site_option('melibu-plugin-typing-logo-get');

// Delete Transients
delete_transient('melibu-plugin-typing-page-activated');
delete_site_transient('melibu-plugin-typing-page-activated');

