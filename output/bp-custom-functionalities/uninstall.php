<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ps_lock_bp');
delete_site_option('ps_lock_bp');
delete_option('ps_exclude_levels');
delete_site_option('ps_exclude_levels');
delete_option('ps_exclude_roles');
delete_site_option('ps_exclude_roles');
delete_option('ps_restrict_member');
delete_site_option('ps_restrict_member');
delete_option('ps_lock_bb');
delete_site_option('ps_lock_bb');

