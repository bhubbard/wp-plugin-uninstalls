<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('auditor_blog_list');
delete_site_transient('auditor_blog_list');
delete_transient('auditor_active_plugins');
delete_site_transient('auditor_active_plugins');
delete_transient('auditor_active_themes');
delete_site_transient('auditor_active_themes');

