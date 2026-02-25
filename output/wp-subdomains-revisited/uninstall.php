<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');
delete_option('wps_disabled');
delete_site_option('wps_disabled');
delete_option('wps_domain');
delete_site_option('wps_domain');
delete_option('wps_subdomainall');
delete_site_option('wps_subdomainall');
delete_option('wps_subpages');
delete_site_option('wps_subpages');
delete_option('wps_subauthors');
delete_site_option('wps_subauthors');
delete_option('wps_themes');
delete_site_option('wps_themes');
delete_option('wps_redirectold');
delete_site_option('wps_redirectold');
delete_option('wps_redirectcanonical');
delete_site_option('wps_redirectcanonical');
delete_option('wps_keeppagesub');
delete_site_option('wps_keeppagesub');
delete_option('wps_subisindex');
delete_site_option('wps_subisindex');
delete_option('wps_arcfilter');
delete_site_option('wps_arcfilter');
delete_option('wps_pagefilter');
delete_site_option('wps_pagefilter');
delete_option('wps_version');
delete_site_option('wps_version');
delete_option('csd_version');
delete_site_option('csd_version');
delete_option('csd_sub_pages');
delete_site_option('csd_sub_pages');
delete_option('sr_sub_pages');
delete_site_option('sr_sub_pages');
delete_option('csd_themes_on');
delete_site_option('csd_themes_on');
delete_option('sr_themes_on');
delete_site_option('sr_themes_on');
delete_option('csd_catarchives_on');
delete_site_option('csd_catarchives_on');
delete_option('sr_catarchives_on');
delete_site_option('sr_catarchives_on');
delete_option('csd_pagefilter_on');
delete_site_option('csd_pagefilter_on');
delete_option('sr_pagefilter_on');
delete_site_option('sr_pagefilter_on');
delete_option('wps_sub_pages');
delete_site_option('wps_sub_pages');
delete_option('wps_catarchives');
delete_site_option('wps_catarchives');
delete_option('csd_subdomainall_on');
delete_site_option('csd_subdomainall_on');
delete_option('csd_widget_categories');
delete_site_option('csd_widget_categories');
delete_option('csd_widget_sitelist');
delete_site_option('csd_widget_sitelist');

// Delete Transients
delete_transient('rewrite_rules');
delete_site_transient('rewrite_rules');

