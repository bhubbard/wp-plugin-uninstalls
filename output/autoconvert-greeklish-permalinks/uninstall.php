<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agp_automatic');
delete_site_option('agp_automatic');
delete_option('agp_diphthongs');
delete_site_option('agp_diphthongs');
delete_option('agp_automatic_post');
delete_site_option('agp_automatic_post');
delete_option('agp_automatic_tax');
delete_site_option('agp_automatic_tax');
delete_option('agp_conversion');
delete_site_option('agp_conversion');
delete_option('agp_version');
delete_site_option('agp_version');
delete_option('auto_gr_permalinks_automatic');
delete_site_option('auto_gr_permalinks_automatic');
delete_option('auto_gr_permalinks_diphthongs');
delete_site_option('auto_gr_permalinks_diphthongs');
delete_option('auto_gr_permalinks_dipthongs');
delete_site_option('auto_gr_permalinks_dipthongs');

// Delete Transients
delete_transient('agp_notice_dismiss');
delete_site_transient('agp_notice_dismiss');

