<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('td_al_db_version');
delete_site_option('td_al_db_version');
delete_option('td_al_access_code');
delete_site_option('td_al_access_code');
delete_option('td_al_lock_active');
delete_site_option('td_al_lock_active');
delete_option('td_al_divertto');
delete_site_option('td_al_divertto');

