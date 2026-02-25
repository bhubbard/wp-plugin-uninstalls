<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sccs_coming_soon_enabled');
delete_site_option('sccs_coming_soon_enabled');
delete_option('sccs_coming_soon_message');
delete_site_option('sccs_coming_soon_message');
delete_option('sccsmm_enable');
delete_site_option('sccsmm_enable');
delete_option('sccsmm_timer_end');
delete_site_option('sccsmm_timer_end');
delete_option('sccsmm_timer_redirect');
delete_site_option('sccsmm_timer_redirect');
delete_option('sccsmm_template');
delete_site_option('sccsmm_template');
delete_option('sccsmm_title');
delete_site_option('sccsmm_title');
delete_option('sccsmm_message');
delete_site_option('sccsmm_message');
delete_option('sccsmm_seo_title');
delete_site_option('sccsmm_seo_title');
delete_option('sccsmm_seo_description');
delete_site_option('sccsmm_seo_description');
delete_option('sccsmm_custom_css');
delete_site_option('sccsmm_custom_css');
delete_option('sccsmm_logo_url');
delete_site_option('sccsmm_logo_url');

