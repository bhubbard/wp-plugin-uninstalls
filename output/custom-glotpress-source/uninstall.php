<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('custom-glotpress-src');
delete_site_option('custom-glotpress-src');

// Delete Transients
delete_transient('custom-glotpress-available-translations');
delete_site_transient('custom-glotpress-available-translations');

