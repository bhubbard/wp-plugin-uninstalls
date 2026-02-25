<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('l2h_options');
delete_site_option('l2h_options');
delete_option('l2h_upgrade_options');
delete_site_option('l2h_upgrade_options');
delete_option('latex2html_mathjax_custom_config');
delete_site_option('latex2html_mathjax_custom_config');
delete_option('latex_chinese');
delete_site_option('latex_chinese');
delete_option('latex_single_show');
delete_site_option('latex_single_show');
delete_option('latex2html_mathjax_custom_cdn');
delete_site_option('latex2html_mathjax_custom_cdn');
delete_option('latex_preamble');
delete_site_option('latex_preamble');
delete_option('latex_style');
delete_site_option('latex_style');

