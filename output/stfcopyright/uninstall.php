<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('stf_tools');
delete_site_option('stf_tools');
delete_option('stf_tools_iyear');
delete_site_option('stf_tools_iyear');
delete_option('stf_tools_uyear');
delete_site_option('stf_tools_uyear');
delete_option('stf_tools_aoutupdate');
delete_site_option('stf_tools_aoutupdate');
delete_option('stf_tools_owner');
delete_site_option('stf_tools_owner');
delete_option('stf_tools_type');
delete_site_option('stf_tools_type');
delete_option('stf_tools_freetext');
delete_site_option('stf_tools_freetext');

