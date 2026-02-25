<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wp_synhighlight_process_comments');
delete_site_option('wp_synhighlight_process_comments');
delete_option('wp_synhighlight_use_theme');
delete_site_option('wp_synhighlight_use_theme');
delete_option('wp_synhighlight_default_codeblock_title');
delete_site_option('wp_synhighlight_default_codeblock_title');
delete_option('wp_synhighlight_default_lines');
delete_site_option('wp_synhighlight_default_lines');
delete_option('wp_synhighlight_default_lines_start_with');
delete_site_option('wp_synhighlight_default_lines_start_with');
delete_option('wp_synhighlight_default_container');
delete_site_option('wp_synhighlight_default_container');
delete_option('wp_synhighlight_default_capitalize_keywords');
delete_site_option('wp_synhighlight_default_capitalize_keywords');
delete_option('wp_synhighlight_default_tab_width');
delete_site_option('wp_synhighlight_default_tab_width');
delete_option('wp_synhighlight_default_strict_mode');
delete_site_option('wp_synhighlight_default_strict_mode');
delete_option('wp_synhighlight_default_blockstate');
delete_site_option('wp_synhighlight_default_blockstate');
delete_option('wp_synhighlight_doclinks_off');
delete_site_option('wp_synhighlight_doclinks_off');
delete_option('wp_synhighlight_filesyntax_on');
delete_site_option('wp_synhighlight_filesyntax_on');
delete_option('wp_synhighlight_filesyntax_ext');
delete_site_option('wp_synhighlight_filesyntax_ext');
delete_option('wp_synhighlight_disable_editarea');
delete_site_option('wp_synhighlight_disable_editarea');
delete_option('wp_synhighlight_styling_type');
delete_site_option('wp_synhighlight_styling_type');
delete_option('wp_synhighlight_override_css_height');
delete_site_option('wp_synhighlight_override_css_height');
delete_option('wp_synhighlight_filesyntax_dir');
delete_site_option('wp_synhighlight_filesyntax_dir');
delete_option('wp_synhighlight_date');
delete_site_option('wp_synhighlight_date');

