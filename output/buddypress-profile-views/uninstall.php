<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('df_displaytext');
delete_site_option('df_displaytext');
delete_option('df_countviews');
delete_site_option('df_countviews');
delete_option('bp_profilevisits_db_version');
delete_site_option('bp_profilevisits_db_version');

