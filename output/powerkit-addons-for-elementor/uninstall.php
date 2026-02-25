<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pkae_enabled_widgets');
delete_site_option('pkae_enabled_widgets');
delete_option('pkae_current_version');
delete_site_option('pkae_current_version');

