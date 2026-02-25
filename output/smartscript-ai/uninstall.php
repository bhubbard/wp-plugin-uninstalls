<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ssai_api_key');
delete_site_option('ssai_api_key');
delete_option('ssai_languages');
delete_site_option('ssai_languages');

