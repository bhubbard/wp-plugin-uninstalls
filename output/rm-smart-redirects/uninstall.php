<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rmsmart_404_last_viewed');
delete_site_option('rmsmart_404_last_viewed');
delete_option('rmsmart_enable_fallback');
delete_site_option('rmsmart_enable_fallback');
delete_option('rmsmart_default_type');
delete_site_option('rmsmart_default_type');

// Delete Transients
delete_transient('rmsmart_slug_changed_notice');
delete_site_transient('rmsmart_slug_changed_notice');

