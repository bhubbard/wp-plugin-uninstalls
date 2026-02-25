<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pushlive_lock_pushing');
delete_site_option('pushlive_lock_pushing');
delete_option('pushlive_install_path');
delete_site_option('pushlive_install_path');
delete_option('pushlive_exclusions');
delete_site_option('pushlive_exclusions');
delete_option('pushlive_db_host');
delete_site_option('pushlive_db_host');
delete_option('pushlive_db_user');
delete_site_option('pushlive_db_user');
delete_option('pushlive_db_pw');
delete_site_option('pushlive_db_pw');
delete_option('pushlive_db_db');
delete_site_option('pushlive_db_db');
delete_option('pushlive_exclude_tables');
delete_site_option('pushlive_exclude_tables');
delete_option('pushlive_stage_base');
delete_site_option('pushlive_stage_base');
delete_option('pushlive_live_base');
delete_site_option('pushlive_live_base');
delete_option('pushlive_backup_path');
delete_site_option('pushlive_backup_path');
delete_option('pushlive_force_login');
delete_site_option('pushlive_force_login');
delete_option('pushlive_lock_reason');
delete_site_option('pushlive_lock_reason');
delete_option('pushlive_replicate_live_base');
delete_site_option('pushlive_replicate_live_base');
delete_option('pushlive_replicate_db_host');
delete_site_option('pushlive_replicate_db_host');
delete_option('pushlive_replicate_db_db');
delete_site_option('pushlive_replicate_db_db');
delete_option('pushlive_replicate_db_user');
delete_site_option('pushlive_replicate_db_user');
delete_option('pushlive_replicate_db_pw');
delete_site_option('pushlive_replicate_db_pw');
delete_option('pushlive_replicate_install_path');
delete_site_option('pushlive_replicate_install_path');

