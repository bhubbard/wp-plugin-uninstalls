<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('livelang_settings');
delete_site_option('livelang_settings');
delete_option('livelang_languages');
delete_site_option('livelang_languages');

