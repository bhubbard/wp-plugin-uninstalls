<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fpf_button_background');
delete_site_option('fpf_button_background');
delete_option('fpf_thumbnail_border');
delete_site_option('fpf_thumbnail_border');
delete_option('fpf_button_text');
delete_site_option('fpf_button_text');
delete_option('fpf_button_hover');
delete_site_option('fpf_button_hover');
delete_option('fpf_button_selection');
delete_site_option('fpf_button_selection');
delete_option('jqs_button_alignment');
delete_site_option('jqs_button_alignment');
delete_option('jqs_select_categories');
delete_site_option('jqs_select_categories');
delete_option('jqs_feature_enable_title');
delete_site_option('jqs_feature_enable_title');
delete_option('jqs_feature_enable_author');
delete_site_option('jqs_feature_enable_author');
delete_option('jqs_feature_enable_date');
delete_site_option('jqs_feature_enable_date');

