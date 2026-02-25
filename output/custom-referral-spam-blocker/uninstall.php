<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('crsb_spammers_list');
delete_site_option('crsb_spammers_list');
delete_option('crsb_share_data');
delete_site_option('crsb_share_data');
delete_option('crsb_share_data_last');
delete_site_option('crsb_share_data_last');
delete_option('crsb_share_data_resp_raw');
delete_site_option('crsb_share_data_resp_raw');
delete_option('crsb_db_version');
delete_site_option('crsb_db_version');

