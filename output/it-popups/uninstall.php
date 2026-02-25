<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('itpopup_option_name');
delete_site_option('itpopup_option_name');
delete_option('itpopup_option_body');
delete_site_option('itpopup_option_body');
delete_option('csl_CustomSiteLogo_option_name');
delete_site_option('csl_CustomSiteLogo_option_name');

