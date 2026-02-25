<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('os3_protector_themes');
delete_site_option('os3_protector_themes');
delete_option('os3_protector_plugins');
delete_site_option('os3_protector_plugins');
delete_option('os3_protector_uploads');
delete_site_option('os3_protector_uploads');

