<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('a11y-buttons-load-assets-via-block-json');
delete_site_option('a11y-buttons-load-assets-via-block-json');
delete_option('a11y-buttons-custom-high-contrast-css');
delete_site_option('a11y-buttons-custom-high-contrast-css');

