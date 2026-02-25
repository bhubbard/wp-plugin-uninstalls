<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('backdataassup_tables');
delete_site_option('backdataassup_tables');
delete_option('backdataassup_compression');
delete_site_option('backdataassup_compression');
delete_option('backdataassup_lastrun');
delete_site_option('backdataassup_lastrun');
delete_option('backdataassup_saveOptions');
delete_site_option('backdataassup_saveOptions');

