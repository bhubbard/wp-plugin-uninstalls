<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fdp_wpbakery');
delete_site_option('fdp_wpbakery');

// Delete Transients
delete_transient('fdp-wpbakery-notice-succ');
delete_site_transient('fdp-wpbakery-notice-succ');
delete_transient('fdp-wpbakery-notice-fail');
delete_site_transient('fdp-wpbakery-notice-fail');

