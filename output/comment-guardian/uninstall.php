<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cg_deferred_admin_notices');
delete_site_option('cg_deferred_admin_notices');
delete_option('cg_version');
delete_site_option('cg_version');
delete_option('cg-language');
delete_site_option('cg-language');

