<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ayudawp_lightbox_images_for_divi_options');
delete_site_option('ayudawp_lightbox_images_for_divi_options');

// Delete Transients
delete_transient('ayudawp_lightbox_activation_error');
delete_site_transient('ayudawp_lightbox_activation_error');

