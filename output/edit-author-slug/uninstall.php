<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_ba_eas_author_base');
delete_site_option('_ba_eas_author_base');
delete_option('_ba_eas_remove_front');
delete_site_option('_ba_eas_remove_front');
delete_option('_ba_eas_do_role_based');
delete_site_option('_ba_eas_do_role_based');
delete_option('_ba_eas_role_slugs');
delete_site_option('_ba_eas_role_slugs');
delete_option('_ba_eas_do_auto_update');
delete_site_option('_ba_eas_do_auto_update');
delete_option('_ba_eas_default_user_nicename');
delete_site_option('_ba_eas_default_user_nicename');
delete_option('_ba_eas_bulk_update');
delete_site_option('_ba_eas_bulk_update');
delete_option('_ba_eas_bulk_update_structure');
delete_site_option('_ba_eas_bulk_update_structure');
delete_option('_ba_eas_db_version');
delete_site_option('_ba_eas_db_version');
delete_option('_ba_eas_old_options');
delete_site_option('_ba_eas_old_options');
delete_option('ba_edit_author_slug');
delete_site_option('ba_edit_author_slug');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

