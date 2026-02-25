<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gesttit_tam');
delete_site_option('gesttit_tam');
delete_option('gesttit_ang');
delete_site_option('gesttit_ang');
delete_option('gesttit_ver');
delete_site_option('gesttit_ver');
delete_option('gesttit_col');
delete_site_option('gesttit_col');
delete_option('gesttit_ini');
delete_site_option('gesttit_ini');
delete_option('gesttit_font');
delete_site_option('gesttit_font');
delete_option('gesttit_fond');
delete_site_option('gesttit_fond');

