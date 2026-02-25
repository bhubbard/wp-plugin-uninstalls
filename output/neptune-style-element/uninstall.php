<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('neptune_style_element_customize');
delete_site_option('neptune_style_element_customize');
delete_option('neptune-style-element');
delete_site_option('neptune-style-element');
delete_option('Neptune_Style_Element_Customize');
delete_site_option('Neptune_Style_Element_Customize');

