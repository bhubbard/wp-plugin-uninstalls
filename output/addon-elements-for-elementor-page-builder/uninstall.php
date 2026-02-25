<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wts_eae_elements');
delete_site_option('wts_eae_elements');
delete_option('eae_review');
delete_site_option('eae_review');
delete_option('elementor_controls_usage');
delete_site_option('elementor_controls_usage');
delete_option('fv_downloaded');
delete_site_option('fv_downloaded');
delete_option('wts_eae_gmap_key');
delete_site_option('wts_eae_gmap_key');
delete_option('wts_eae_youtube_api_key');
delete_site_option('wts_eae_youtube_api_key');
delete_option('use_tsParticle');
delete_site_option('use_tsParticle');

// Delete Transients
delete_transient('eae_remind_later');
delete_site_transient('eae_remind_later');
delete_transient('fv_download_later');
delete_site_transient('fv_download_later');

