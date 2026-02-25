<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('wc_emailplatform_dismissed_notices');
delete_site_transient('wc_emailplatform_dismissed_notices');
delete_transient('empwc_lists');
delete_site_transient('empwc_lists');

