<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('speed-contact-bar-options');
delete_site_option('speed-contact-bar-options');

// Delete Transients
delete_transient('speed-contact-bar');
delete_site_transient('speed-contact-bar');

