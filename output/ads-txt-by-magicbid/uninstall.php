<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mb_plgn_ads_txt_db_version');
delete_site_option('mb_plgn_ads_txt_db_version');

