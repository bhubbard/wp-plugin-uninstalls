<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sp-location-id');
delete_site_option('sp-location-id');
delete_option('sp-primary-background-color');
delete_site_option('sp-primary-background-color');
delete_option('sp-secondary-background-color');
delete_site_option('sp-secondary-background-color');
delete_option('sp-tertiary-background-color');
delete_site_option('sp-tertiary-background-color');
delete_option('sp-font-family');
delete_site_option('sp-font-family');
delete_option('sp-base-font-size');
delete_site_option('sp-base-font-size');
delete_option('sp-item-casing');
delete_site_option('sp-item-casing');
delete_option('sp-primary-font-color');
delete_site_option('sp-primary-font-color');
delete_option('sp-secondary-font-color');
delete_site_option('sp-secondary-font-color');
delete_option('sp-tertiary-font-color');
delete_site_option('sp-tertiary-font-color');
delete_option('sp-display-announcements');
delete_site_option('sp-display-announcements');
delete_option('sp-display-photos');
delete_site_option('sp-display-photos');
delete_option('sp-display-currency-symbol');
delete_site_option('sp-display-currency-symbol');
delete_option('sp-display-price');
delete_site_option('sp-display-price');
delete_option('sp-display-disclaimer');
delete_site_option('sp-display-disclaimer');
delete_option('sp-attribution-image');
delete_site_option('sp-attribution-image');

