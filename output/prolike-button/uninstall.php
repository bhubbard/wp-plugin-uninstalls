<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('background-image-field-like');
delete_site_option('background-image-field-like');
delete_option('background-image-field-dislike');
delete_site_option('background-image-field-dislike');
delete_option('plb_background-image-field-like');
delete_site_option('plb_background-image-field-like');
delete_option('plb_background-image-field-dislike');
delete_site_option('plb_background-image-field-dislike');
delete_option('plb_your_style_css');
delete_site_option('plb_your_style_css');

