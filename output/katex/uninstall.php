<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('katex_load_assets_conditionally');
delete_site_option('katex_load_assets_conditionally');
delete_option('katex_enable_latex_shortcode');
delete_site_option('katex_enable_latex_shortcode');
delete_option('katex_version');
delete_site_option('katex_version');
delete_option('katex_use_jsdelivr');
delete_site_option('katex_use_jsdelivr');

