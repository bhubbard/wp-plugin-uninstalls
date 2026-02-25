<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ayudawp_nsm_dismissed_notices');
delete_site_option('ayudawp_nsm_dismissed_notices');
delete_option('wpseo_taxonomy_meta');
delete_site_option('wpseo_taxonomy_meta');
delete_option('aioseo_options');
delete_site_option('aioseo_options');
delete_option('ayudawp_nsm_settings');
delete_site_option('ayudawp_nsm_settings');

// Delete Transients
delete_transient('ayudawp_nsm_reset_success');
delete_site_transient('ayudawp_nsm_reset_success');
delete_transient('ayudawp_nsm_seo_plugin_dismissed');
delete_site_transient('ayudawp_nsm_seo_plugin_dismissed');
delete_transient('ayudawp_nsm_promo_dismissed');
delete_site_transient('ayudawp_nsm_promo_dismissed');
delete_transient('ayudawp_nsm_noindex_notice');
delete_site_transient('ayudawp_nsm_noindex_notice');
delete_transient('ayudawp_nsm_seo_plugin_notice');
delete_site_transient('ayudawp_nsm_seo_plugin_notice');
delete_transient('ayudawp_nsm_promo_notice');
delete_site_transient('ayudawp_nsm_promo_notice');

