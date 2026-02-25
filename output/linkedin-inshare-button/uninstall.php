<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('linkedinshare_showonlyinsingle');
delete_site_option('linkedinshare_showonlyinsingle');
delete_option('linkedinshare_breakbefore');
delete_site_option('linkedinshare_breakbefore');
delete_option('linkedinshare_breakafter');
delete_site_option('linkedinshare_breakafter');
delete_option('linkedinshare_displaystyle');
delete_site_option('linkedinshare_displaystyle');
delete_option('linkedinshare_divstyling');
delete_site_option('linkedinshare_divstyling');
delete_option('linkedinshare_location');
delete_site_option('linkedinshare_location');

