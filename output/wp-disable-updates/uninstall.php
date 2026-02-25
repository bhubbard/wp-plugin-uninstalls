<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vgwpdup_disable-theme');
delete_site_option('vgwpdup_disable-theme');
delete_option('vgwpdup_disable-plugin');
delete_site_option('vgwpdup_disable-plugin');
delete_option('vgwpdup_disable-wordpress');
delete_site_option('vgwpdup_disable-wordpress');
delete_option('vgwpdup_disable-translation');
delete_site_option('vgwpdup_disable-translation');

