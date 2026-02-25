<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mb-button-id1');
delete_site_option('mb-button-id1');
delete_option('mb-color1');
delete_site_option('mb-color1');
delete_option('mb-hover1');
delete_site_option('mb-hover1');
delete_option('mb-text1');
delete_site_option('mb-text1');
delete_option('mb-button-id2');
delete_site_option('mb-button-id2');
delete_option('mb-color2');
delete_site_option('mb-color2');
delete_option('mb-hover2');
delete_site_option('mb-hover2');
delete_option('mb-text2');
delete_site_option('mb-text2');
delete_option('mb-width1');
delete_site_option('mb-width1');
delete_option('mb-width2');
delete_site_option('mb-width2');
delete_option('mb-height1');
delete_site_option('mb-height1');
delete_option('mb-height2');
delete_site_option('mb-height2');
delete_option('mb-radius1');
delete_site_option('mb-radius1');
delete_option('mb-radius2');
delete_site_option('mb-radius2');

