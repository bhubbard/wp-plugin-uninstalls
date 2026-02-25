<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hide_try_gutenberg_callout');
delete_site_option('hide_try_gutenberg_callout');
delete_option('dismiss_gutenberg_nag_options');
delete_site_option('dismiss_gutenberg_nag_options');

// Delete Transients
delete_transient('dismiss_gutenberg_nag_transients');
delete_site_transient('dismiss_gutenberg_nag_transients');

