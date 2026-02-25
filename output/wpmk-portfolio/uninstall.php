<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpmk_portfolio_templates');
delete_site_option('wpmk_portfolio_templates');
delete_option('wpmk_portfolio_current_templates');
delete_site_option('wpmk_portfolio_current_templates');
delete_option('wpmk_portfolio_enable_filter');
delete_site_option('wpmk_portfolio_enable_filter');
delete_option('wpmk_portfolio_filter_sort');
delete_site_option('wpmk_portfolio_filter_sort');
delete_option('wpmk_portfolio_template_css');
delete_site_option('wpmk_portfolio_template_css');
delete_option('wpmk_portfolio_animate_status');
delete_site_option('wpmk_portfolio_animate_status');
delete_option('wpmk_portfolio_current_animate');
delete_site_option('wpmk_portfolio_current_animate');
delete_option('wpmk_portfolio_current_animate_delay');
delete_site_option('wpmk_portfolio_current_animate_delay');
delete_option('wpmk_portfolio_current_animate_speed');
delete_site_option('wpmk_portfolio_current_animate_speed');
delete_option('wpmk_portfolio_animate');
delete_site_option('wpmk_portfolio_animate');
delete_option('wpmk_portfolio_animate_delay');
delete_site_option('wpmk_portfolio_animate_delay');
delete_option('wpmk_portfolio_animate_speed');
delete_site_option('wpmk_portfolio_animate_speed');

// Clear Metadata
global $wpdb;
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->postmeta} WHERE meta_key = %s", 'wpmk_portfolio_project' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->usermeta} WHERE meta_key = %s", 'wpmk_portfolio_project' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->termmeta} WHERE meta_key = %s", 'wpmk_portfolio_project' ) );
$wpdb->query( $wpdb->prepare( "DELETE FROM {$wpdb->commentmeta} WHERE meta_key = %s", 'wpmk_portfolio_project' ) );

