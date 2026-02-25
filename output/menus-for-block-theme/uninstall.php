<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mfbt_add_theme_support_menu');
delete_site_option('mfbt_add_theme_support_menu');
delete_option('mfbt_show_customizer');
delete_site_option('mfbt_show_customizer');
delete_option('mfbt_disable_files_editor');
delete_site_option('mfbt_disable_files_editor');
delete_option('mfbt_show_reusable_blocks');
delete_site_option('mfbt_show_reusable_blocks');
delete_option('mfbt_show_navigation_menu');
delete_site_option('mfbt_show_navigation_menu');
delete_option('mfbt_show_templates');
delete_site_option('mfbt_show_templates');
delete_option('mfbt_show_template_parts');
delete_site_option('mfbt_show_template_parts');

