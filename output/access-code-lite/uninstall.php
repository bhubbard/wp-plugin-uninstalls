<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('expandops_access_code_lite');
delete_site_option('expandops_access_code_lite');

// Delete Transients
delete_transient('expandops_admin_notices');
delete_site_transient('expandops_admin_notices');

