<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kblog_mathjax_force_load');
delete_site_option('kblog_mathjax_force_load');
delete_option('kblog_mathjax_latex_inline');
delete_site_option('kblog_mathjax_latex_inline');
delete_option('kblog_mathjax_use_wplatex_syntax');
delete_site_option('kblog_mathjax_use_wplatex_syntax');
delete_option('kblog_mathjax_use_cdn');
delete_site_option('kblog_mathjax_use_cdn');
delete_option('kblog_mathjax_custom_location');
delete_site_option('kblog_mathjax_custom_location');
delete_option('kblog_mathjax_config');
delete_site_option('kblog_mathjax_config');

