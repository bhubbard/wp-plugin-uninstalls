<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rcbcs-primary-color');
delete_site_option('rcbcs-primary-color');
delete_option('rcb-banner-body-design-btn-accept-all-bg');
delete_site_option('rcb-banner-body-design-btn-accept-all-bg');
delete_option('rcbcs-primary-color-hover');
delete_site_option('rcbcs-primary-color-hover');
delete_option('rcb-banner-body-design-btn-accept-all-hover-bg');
delete_site_option('rcb-banner-body-design-btn-accept-all-hover-bg');
delete_option('rcbcs-secondary-like-primary');
delete_site_option('rcbcs-secondary-like-primary');
delete_option('rcb-banner-body-design-btn-accept-essentials-use-accept-all');
delete_site_option('rcb-banner-body-design-btn-accept-essentials-use-accept-all');
delete_option('rcbcs-save-like-primary');
delete_site_option('rcbcs-save-like-primary');
delete_option('rcb-save-button-use-accept-all');
delete_site_option('rcb-save-button-use-accept-all');
delete_option('rcbcs-secondary-color');
delete_site_option('rcbcs-secondary-color');
delete_option('rcb-banner-body-design-btn-accept-essentials-bg');
delete_site_option('rcb-banner-body-design-btn-accept-essentials-bg');
delete_option('rcbcs-secondary-color-hover');
delete_site_option('rcbcs-secondary-color-hover');
delete_option('rcb-banner-body-design-btn-accept-essentials-hover-bg');
delete_site_option('rcb-banner-body-design-btn-accept-essentials-hover-bg');
delete_option('rcbcs-background-color');
delete_site_option('rcbcs-background-color');
delete_option('rcb-banner-design-bg');
delete_site_option('rcb-banner-design-bg');
delete_option('rcbcs-primary-font-color');
delete_site_option('rcbcs-primary-font-color');
delete_option('rcb-banner-design-font-color');
delete_site_option('rcb-banner-design-font-color');
delete_option('rcbcs-secondary-font-color');
delete_site_option('rcbcs-secondary-font-color');
delete_option('rcb-banner-body-design-teachings-font-color');
delete_site_option('rcb-banner-body-design-teachings-font-color');
delete_option('rcbcs-link-color');
delete_site_option('rcbcs-link-color');
delete_option('rcb-group-link-color');
delete_site_option('rcb-group-link-color');
delete_option('rcbcs-link-color-hover');
delete_site_option('rcbcs-link-color-hover');
delete_option('rcb-group-link-hover-color');
delete_site_option('rcb-group-link-hover-color');

// Delete Transients
delete_transient('rcbcs_plugin_activation');
delete_site_transient('rcbcs_plugin_activation');

