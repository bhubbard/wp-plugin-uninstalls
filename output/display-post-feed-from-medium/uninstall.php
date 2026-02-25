<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dpffm_plugin_do_activation_redirect');
delete_site_option('dpffm_plugin_do_activation_redirect');
delete_option('dpffm_handle');
delete_site_option('dpffm_handle');
delete_option('dpffm_subtitle');
delete_site_option('dpffm_subtitle');
delete_option('dpffm_hideimage');
delete_site_option('dpffm_hideimage');
delete_option('dpffm_view');
delete_site_option('dpffm_view');
delete_option('dpffm_gridview');
delete_site_option('dpffm_gridview');
delete_option('dpffm_titletag');
delete_site_option('dpffm_titletag');
delete_option('dpffm_readmore');
delete_site_option('dpffm_readmore');
delete_option('dpffm_numposts');
delete_site_option('dpffm_numposts');
delete_option('upload_image');
delete_site_option('upload_image');
delete_option('dpffm_dateformat');
delete_site_option('dpffm_dateformat');

