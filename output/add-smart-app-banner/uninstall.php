<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sab_appleid');
delete_site_option('sab_appleid');
delete_option('sab_playid');
delete_site_option('sab_playid');
delete_option('sab_msid');
delete_site_option('sab_msid');
delete_option('sab_msname');
delete_site_option('sab_msname');
delete_option('sab_dayshidden');
delete_site_option('sab_dayshidden');
delete_option('sab_daysreminder');
delete_site_option('sab_daysreminder');
delete_option('sab_title');
delete_site_option('sab_title');
delete_option('sab_author');
delete_site_option('sab_author');
delete_option('sab_button');
delete_site_option('sab_button');
delete_option('sab_iosprice');
delete_site_option('sab_iosprice');
delete_option('sab_playprice');
delete_site_option('sab_playprice');
delete_option('sab_msprice');
delete_site_option('sab_msprice');
delete_option('sab_image');
delete_site_option('sab_image');
delete_option('sab_daysreminder  ');
delete_site_option('sab_daysreminder  ');

