<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gr_noposts');
delete_site_option('gr_noposts');
delete_option('gr_rstitle');
delete_site_option('gr_rstitle');
delete_option('gr_rptitle');
delete_site_option('gr_rptitle');
delete_option('gr_showrs');
delete_site_option('gr_showrs');

