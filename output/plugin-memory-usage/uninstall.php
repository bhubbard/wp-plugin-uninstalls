<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('pmusage_supported_php_versions');
delete_site_transient('pmusage_supported_php_versions');
delete_transient('pmusage_latest_wp_version');
delete_site_transient('pmusage_latest_wp_version');
delete_transient('pmusage_latest_php_version');
delete_site_transient('pmusage_latest_php_version');
delete_transient('pmusage_mysql_eol_data');
delete_site_transient('pmusage_mysql_eol_data');

