<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cdi_tokentimerswitchnewcdi');
delete_site_option('cdi_tokentimerswitchnewcdi');
delete_option('cdi_o_transferoldsettings');
delete_site_option('cdi_o_transferoldsettings');
delete_option('wc_settings_tab_colissimo_cleanonsuppress');
delete_site_option('wc_settings_tab_colissimo_cleanonsuppress');
delete_option('cdi_notice_display');
delete_site_option('cdi_notice_display');
delete_option('cdi_options_version');
delete_site_option('cdi_options_version');

