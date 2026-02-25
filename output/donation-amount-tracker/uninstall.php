<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('donamt_total_donation_amount');
delete_site_option('donamt_total_donation_amount');
delete_option('donamt_settings');
delete_site_option('donamt_settings');
delete_option('donamt_display_settings');
delete_site_option('donamt_display_settings');
delete_option('donamt_version');
delete_site_option('donamt_version');
delete_option('total_donation_amount');
delete_site_option('total_donation_amount');
delete_option('donamt_previous_version');
delete_site_option('donamt_previous_version');
delete_option('donamt_hpos_compatible');
delete_site_option('donamt_hpos_compatible');
delete_option('donation_amount_settings');
delete_site_option('donation_amount_settings');
delete_option('donation_amount_display_settings');
delete_site_option('donation_amount_display_settings');
delete_option('donation_amount_version');
delete_site_option('donation_amount_version');
delete_option('dat_settings');
delete_site_option('dat_settings');
delete_option('dat_display_settings');
delete_site_option('dat_display_settings');
delete_option('dat_total_donation_amount');
delete_site_option('dat_total_donation_amount');
delete_option('dat_version');
delete_site_option('dat_version');
delete_option('dat_previous_version');
delete_site_option('dat_previous_version');

// Delete Transients
delete_transient('donamt_redirect_after_save');
delete_site_transient('donamt_redirect_after_save');
delete_transient('donamt_version_changed');
delete_site_transient('donamt_version_changed');
delete_transient('donamt_checked_amount');
delete_site_transient('donamt_checked_amount');

