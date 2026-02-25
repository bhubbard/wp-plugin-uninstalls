<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('affwp_erl_version');
delete_site_option('affwp_erl_version');
delete_option('affiliatewp_external_referral_links');
delete_site_option('affiliatewp_external_referral_links');
delete_option('affwp_version');
delete_site_option('affwp_version');

