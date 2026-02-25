<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Blue_Triangle_Automated_CSP_Free_Directives');
delete_site_option('Blue_Triangle_Automated_CSP_Free_Directives');
delete_option('Blue_Triangle_Automated_CSP_Free_Directive_Options');
delete_site_option('Blue_Triangle_Automated_CSP_Free_Directive_Options');
delete_option('Blue_Triangle_Automated_CSP_Free_Errors');
delete_site_option('Blue_Triangle_Automated_CSP_Free_Errors');
delete_option('Blue_Triangle_Automated_CSP_Free_Report_Mode');
delete_site_option('Blue_Triangle_Automated_CSP_Free_Report_Mode');
delete_option('Blue_Triangle_Automated_CSP_Free_CSP');
delete_site_option('Blue_Triangle_Automated_CSP_Free_CSP');
delete_option('Blue_Triangle_Automated_CSP_Free_Version');
delete_site_option('Blue_Triangle_Automated_CSP_Free_Version');

// Clear Cron Jobs
wp_clear_scheduled_hook('Blue_Triangle_Automated_CSP_Free_Cron_Update');

