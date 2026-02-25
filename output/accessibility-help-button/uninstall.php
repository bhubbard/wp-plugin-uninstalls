<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('aa-bg-color');
delete_site_option('aa-bg-color');
delete_option('aa-bg-hover-color');
delete_site_option('aa-bg-hover-color');
delete_option('aa-text-color');
delete_site_option('aa-text-color');
delete_option('aa-text-hover-color');
delete_site_option('aa-text-hover-color');
delete_option('border-radius');
delete_site_option('border-radius');
delete_option('x-padding');
delete_site_option('x-padding');
delete_option('y-padding');
delete_site_option('y-padding');
delete_option('font-size');
delete_site_option('font-size');
delete_option('font-weight');
delete_site_option('font-weight');
delete_option('button-text');
delete_site_option('button-text');
delete_option('phone_number');
delete_site_option('phone_number');
delete_option('button-type');
delete_site_option('button-type');
delete_option('button-position');
delete_site_option('button-position');
delete_option('ass-label');
delete_site_option('ass-label');
delete_option('hide-button');
delete_site_option('hide-button');

