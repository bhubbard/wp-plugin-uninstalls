<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jpibfi_selection_options');
delete_site_option('jpibfi_selection_options');
delete_option('jpibfi_visual_options');
delete_site_option('jpibfi_visual_options');
delete_option('jpibfi_lightbox_options');
delete_site_option('jpibfi_lightbox_options');
delete_option('jpibfi_options_version');
delete_site_option('jpibfi_options_version');
delete_option('jpibfi_version');
delete_site_option('jpibfi_version');
delete_option('jpibfi_pro_ad');
delete_site_option('jpibfi_pro_ad');
delete_option('jpibfi_license');
delete_site_option('jpibfi_license');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('_jpibfi_activation_redirect');
delete_site_transient('_jpibfi_activation_redirect');

