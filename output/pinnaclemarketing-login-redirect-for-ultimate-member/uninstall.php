<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('umlr_redirect_url');
delete_site_option('umlr_redirect_url');

// Delete Transients
delete_transient('umlr_missing_dependency_notice');
delete_site_transient('umlr_missing_dependency_notice');

