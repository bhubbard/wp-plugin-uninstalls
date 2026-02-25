<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woai_settings');
delete_site_option('woai_settings');
delete_option('woai_do_activation_redirect');
delete_site_option('woai_do_activation_redirect');

