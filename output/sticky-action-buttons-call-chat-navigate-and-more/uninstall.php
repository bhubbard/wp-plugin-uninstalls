<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('combar_sab_buttons');
delete_site_option('combar_sab_buttons');
delete_option('combar_sab_setting_desk');
delete_site_option('combar_sab_setting_desk');
delete_option('combar_sab_general_setting');
delete_site_option('combar_sab_general_setting');
delete_option('combar_sab_setting_mob');
delete_site_option('combar_sab_setting_mob');

