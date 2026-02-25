<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('exclutips-general-settings');
delete_site_option('exclutips-general-settings');
delete_option('exclutips-advanced-settings');
delete_site_option('exclutips-advanced-settings');

