<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('domain_search_for_whmcs_url');
delete_site_option('domain_search_for_whmcs_url');
delete_option('domain_search_for_whmcs_placeholder');
delete_site_option('domain_search_for_whmcs_placeholder');
delete_option('domain_search_for_whmcs_shortcodes');
delete_site_option('domain_search_for_whmcs_shortcodes');
delete_option('whmcs_domain_search_url');
delete_site_option('whmcs_domain_search_url');
delete_option('whmcs_domain_search_placeholder');
delete_site_option('whmcs_domain_search_placeholder');
delete_option('whmcs_domain_search_custom_css');
delete_site_option('whmcs_domain_search_custom_css');

