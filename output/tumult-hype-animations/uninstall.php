<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hypeanimations_db_version');
delete_site_option('hypeanimations_db_version');

// Delete Transients
delete_transient('hype_reload_translations_notice');
delete_site_transient('hype_reload_translations_notice');

