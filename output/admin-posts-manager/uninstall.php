<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('apm_dismiss_feedback');
delete_site_option('apm_dismiss_feedback');

// Delete Transients
delete_transient('apm_plugin_activated');
delete_site_transient('apm_plugin_activated');
delete_transient('apm_maybe_later_feedback');
delete_site_transient('apm_maybe_later_feedback');

