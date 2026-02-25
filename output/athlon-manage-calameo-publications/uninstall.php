<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('AthlonManageCalameoPublications_db_version');
delete_site_option('AthlonManageCalameoPublications_db_version');
delete_option('calameo_subscription_ids');
delete_site_option('calameo_subscription_ids');
delete_option('calameo_credentials');
delete_site_option('calameo_credentials');

