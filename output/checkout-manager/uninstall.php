<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('imcm-display-position');
delete_site_option('imcm-display-position');
delete_option('display_position');
delete_site_option('display_position');
delete_option('imcm-checkout-fields');
delete_site_option('imcm-checkout-fields');
delete_option('imcm-style-options');
delete_site_option('imcm-style-options');
delete_option('imcm-setting-troubleshoot');
delete_site_option('imcm-setting-troubleshoot');
delete_option('imcm-setting-general');
delete_site_option('imcm-setting-general');

