<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple-google-fonts-japanese-font');
delete_site_option('simple-google-fonts-japanese-font');
delete_option('simple-google-fonts-japanese-notosansjp-weight');
delete_site_option('simple-google-fonts-japanese-notosansjp-weight');
delete_option('simple-google-fonts-japanese-mplus1p-weight');
delete_site_option('simple-google-fonts-japanese-mplus1p-weight');
delete_option('simple-google-fonts-japanese-notoserifjp-weight');
delete_site_option('simple-google-fonts-japanese-notoserifjp-weight');
delete_option('simple-google-fonts-japanese-mplusrounded1c-weight');
delete_site_option('simple-google-fonts-japanese-mplusrounded1c-weight');
delete_option('simple-google-fonts-japanese-editor');
delete_site_option('simple-google-fonts-japanese-editor');

