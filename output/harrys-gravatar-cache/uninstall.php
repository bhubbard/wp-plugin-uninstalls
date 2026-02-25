<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hgc_db_version');
delete_site_option('hgc_db_version');
delete_option('gravatar_disable_hovercards');
delete_site_option('gravatar_disable_hovercards');
delete_option('widget_authors');
delete_site_option('widget_authors');

