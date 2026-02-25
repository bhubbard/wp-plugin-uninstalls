<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('k_timelinda-field-text-size');
delete_site_option('k_timelinda-field-text-size');
delete_option('k_timelinda-field-line-height');
delete_site_option('k_timelinda-field-line-height');
delete_option('k_timelinda-field-title-size');
delete_site_option('k_timelinda-field-title-size');
delete_option('k_timelinda-field-subtitle-size');
delete_site_option('k_timelinda-field-subtitle-size');
delete_option('k_timelinda-field-timelinda-color');
delete_site_option('k_timelinda-field-timelinda-color');
delete_option('k_timelinda-field-border-color');
delete_site_option('k_timelinda-field-border-color');
delete_option('k_timelinda-field-title-color');
delete_site_option('k_timelinda-field-title-color');
delete_option('k_timelinda-field-subtitle-color');
delete_site_option('k_timelinda-field-subtitle-color');
delete_option('k_timelinda-field-text-color');
delete_site_option('k_timelinda-field-text-color');

