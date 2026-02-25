<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('piotnet-addons-for-elementor-pro-username');
delete_site_option('piotnet-addons-for-elementor-pro-username');
delete_option('piotnet-addons-for-elementor-pro-password');
delete_site_option('piotnet-addons-for-elementor-pro-password');
delete_option('_site_transient_update_plugins');
delete_site_option('_site_transient_update_plugins');
delete_option('pafe-features-posts-list');
delete_site_option('pafe-features-posts-list');
delete_option('piotnet_addons_for_elementor_do_activation_redirect');
delete_site_option('piotnet_addons_for_elementor_do_activation_redirect');
delete_option('pafe-features-before-after-image-comparison-slider');
delete_site_option('pafe-features-before-after-image-comparison-slider');
delete_option('pafe-features-switch-content');
delete_site_option('pafe-features-switch-content');
delete_option('pafe-features-video-playlist');
delete_site_option('pafe-features-video-playlist');
delete_option('pafe-features-vertical-timeline');
delete_site_option('pafe-features-vertical-timeline');
delete_option('pafe-features-image-accordion');
delete_site_option('pafe-features-image-accordion');
delete_option('pafe-features-sales-pop');
delete_site_option('pafe-features-sales-pop');
delete_option('pafe-features-countdown-cart');
delete_site_option('pafe-features-countdown-cart');
delete_option('pafe-features-dual-color-headline');
delete_site_option('pafe-features-dual-color-headline');
delete_option('pafe-features-hotspot');
delete_site_option('pafe-features-hotspot');
delete_option('pafe-features-progressbar');
delete_site_option('pafe-features-progressbar');
delete_option('pafe-features-table');
delete_site_option('pafe-features-table');
delete_option('pafe-features-image-carousel-multiple-custom-urls');
delete_site_option('pafe-features-image-carousel-multiple-custom-urls');
delete_option('pafe-features-gradient-text');
delete_site_option('pafe-features-gradient-text');
delete_option('pafe-features-gradient-button');
delete_site_option('pafe-features-gradient-button');
delete_option('pafe-features-tooltip');
delete_site_option('pafe-features-tooltip');
delete_option('pafe-features-form-style');
delete_site_option('pafe-features-form-style');
delete_option('pafe-features-particles');
delete_site_option('pafe-features-particles');

