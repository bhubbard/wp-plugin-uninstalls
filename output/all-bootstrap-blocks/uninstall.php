<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('areoi-version');
delete_site_option('areoi-version');
delete_option('areoi-dashboard-global-bootstrap-css');
delete_site_option('areoi-dashboard-global-bootstrap-css');
delete_option('areoi-dashboard-global-bootstrap-js');
delete_site_option('areoi-dashboard-global-bootstrap-js');
delete_option('areoi-lightspeed-plugins-nf-styles');
delete_site_option('areoi-lightspeed-plugins-nf-styles');
delete_option('ninja_forms_settings');
delete_site_option('ninja_forms_settings');
delete_option('areoi-bootstrap-version');
delete_site_option('areoi-bootstrap-version');
delete_option('areoi-theme-json-updated');
delete_site_option('areoi-theme-json-updated');
delete_option('areoi-layout-grid-grid-breakpoint-lg');
delete_site_option('areoi-layout-grid-grid-breakpoint-lg');
delete_option('areoi-lightspeed-company-name');
delete_site_option('areoi-lightspeed-company-name');
delete_option('areoi-lightspeed-company-address');
delete_site_option('areoi-lightspeed-company-address');
delete_option('areoi-lightspeed-company-phone');
delete_site_option('areoi-lightspeed-company-phone');
delete_option('areoi-lightspeed-company-email');
delete_site_option('areoi-lightspeed-company-email');
delete_option('areoi-lightspeed-company-facebook');
delete_site_option('areoi-lightspeed-company-facebook');
delete_option('areoi-lightspeed-company-twitter');
delete_site_option('areoi-lightspeed-company-twitter');
delete_option('areoi-lightspeed-company-instagram');
delete_site_option('areoi-lightspeed-company-instagram');
delete_option('areoi-lightspeed-company-linkedin');
delete_site_option('areoi-lightspeed-company-linkedin');
delete_option('areoi-lightspeed-company-tiktok');
delete_site_option('areoi-lightspeed-company-tiktok');
delete_option('areoi-lightspeed-company-pinterest');
delete_site_option('areoi-lightspeed-company-pinterest');
delete_option('areoi-lightspeed-company-youtube');
delete_site_option('areoi-lightspeed-company-youtube');
delete_option('areoi-lightspeed-styles-strip-padding');
delete_site_option('areoi-lightspeed-styles-strip-padding');
delete_option('areoi-lightspeed-styles-strip-pattern');
delete_site_option('areoi-lightspeed-styles-strip-pattern');
delete_option('areoi-lightspeed-styles-strip-pattern-container');
delete_site_option('areoi-lightspeed-styles-strip-pattern-container');
delete_option('areoi-lightspeed-styles-grid-columns');
delete_site_option('areoi-lightspeed-styles-grid-columns');

