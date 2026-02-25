<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('extevtcal_date_formatting');
delete_site_option('extevtcal_date_formatting');
delete_option('extevtcal_date_customformat');
delete_site_option('extevtcal_date_customformat');
delete_option('extevtcal_link_position');
delete_site_option('extevtcal_link_position');
delete_option('extevtcal_use_css');
delete_site_option('extevtcal_use_css');
delete_option('extevtcal_currentday_behavior');
delete_site_option('extevtcal_currentday_behavior');
delete_option('links_updated_date_format');
delete_site_option('links_updated_date_format');
delete_option('extevtcal_db_version');
delete_site_option('extevtcal_db_version');

