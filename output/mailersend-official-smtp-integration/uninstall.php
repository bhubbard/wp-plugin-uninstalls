<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailersend_config_mode');
delete_site_option('mailersend_config_mode');

// Delete Transients
delete_transient('mailersend_error');
delete_site_transient('mailersend_error');

