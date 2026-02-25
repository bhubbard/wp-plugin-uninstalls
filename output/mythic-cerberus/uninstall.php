<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mythiccerberus_db_version');
delete_site_option('mythiccerberus_db_version');
delete_option('mythiccerberusAdminOptions');
delete_site_option('mythiccerberusAdminOptions');

