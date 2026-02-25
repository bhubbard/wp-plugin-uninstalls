<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kzeni_disable_theme_plugin_update_emails_disable_all');
delete_site_option('kzeni_disable_theme_plugin_update_emails_disable_all');

