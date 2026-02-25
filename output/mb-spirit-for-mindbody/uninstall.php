<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mb_spirit_options');
delete_site_option('mb_spirit_options');

// Delete Transients
delete_transient('MB_SPIRIT_SETTINGS_INFO');
delete_site_transient('MB_SPIRIT_SETTINGS_INFO');

