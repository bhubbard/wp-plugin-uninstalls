<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tr-show-link');
delete_site_option('tr-show-link');
delete_option('tr-css-head');
delete_site_option('tr-css-head');
delete_option('tr-css-head-color');
delete_site_option('tr-css-head-color');
delete_option('tr-css-font');
delete_site_option('tr-css-font');
delete_option('tr-css-color');
delete_site_option('tr-css-color');
delete_option('tr-css-border-style');
delete_site_option('tr-css-border-style');
delete_option('tr-css-border-size');
delete_site_option('tr-css-border-size');
delete_option('tr-css-border-color');
delete_site_option('tr-css-border-color');
delete_option('tr-css-bg');
delete_site_option('tr-css-bg');
delete_option('tr-css-custom');
delete_site_option('tr-css-custom');
delete_option('tr-newsletter');
delete_site_option('tr-newsletter');
delete_option('tr-title-newsletter');
delete_site_option('tr-title-newsletter');
delete_option('tr-explain-newsletter');
delete_site_option('tr-explain-newsletter');
delete_option('tr-confirm-newsletter');
delete_site_option('tr-confirm-newsletter');
delete_option('tr-button-newsletter');
delete_site_option('tr-button-newsletter');
delete_option('tr-subscriber');
delete_site_option('tr-subscriber');
delete_option('tr-tracking-adwords');
delete_site_option('tr-tracking-adwords');
delete_option('tr-tracking-facebook');
delete_site_option('tr-tracking-facebook');
delete_option('tr-tracking-other');
delete_site_option('tr-tracking-other');
delete_option('tr-tracking-pixels');
delete_site_option('tr-tracking-pixels');
delete_option('tr-adwords');
delete_site_option('tr-adwords');
delete_option('tr-facebook');
delete_site_option('tr-facebook');
delete_option('tr-youtube');
delete_site_option('tr-youtube');

