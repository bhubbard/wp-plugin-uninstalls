<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('perfect_portal_company_guid');
delete_site_option('perfect_portal_company_guid');
delete_option('perfect_portal_region');
delete_site_option('perfect_portal_region');
delete_option('perfect_portal_quote_calc_intake_type');
delete_site_option('perfect_portal_quote_calc_intake_type');
delete_option('perfect_portal_quote_calc_intake_guid');
delete_site_option('perfect_portal_quote_calc_intake_guid');
delete_option('perfect_portal_version');
delete_site_option('perfect_portal_version');

