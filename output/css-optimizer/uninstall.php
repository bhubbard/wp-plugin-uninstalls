<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bpminifycss_cache_nogzip');
delete_site_option('bpminifycss_cache_nogzip');
delete_option('bpminifycss_version');
delete_site_option('bpminifycss_version');
delete_option('bpminifycss_cache_clean');
delete_site_option('bpminifycss_cache_clean');
delete_option('bpminifycss_show_adv');
delete_site_option('bpminifycss_show_adv');
delete_option('bpminifycss_html');
delete_site_option('bpminifycss_html');
delete_option('bpminifycss_html_keepcomments');
delete_site_option('bpminifycss_html_keepcomments');
delete_option('bpminifycss_js');
delete_site_option('bpminifycss_js');
delete_option('bpminifycss_js_forcehead');
delete_site_option('bpminifycss_js_forcehead');
delete_option('bpminifycss_js_justhead');
delete_site_option('bpminifycss_js_justhead');
delete_option('bpminifycss_js_include_inline');
delete_site_option('bpminifycss_js_include_inline');
delete_option('bpminifycss_js_exclude');
delete_site_option('bpminifycss_js_exclude');
delete_option('bpminifycss_js_trycatch');
delete_site_option('bpminifycss_js_trycatch');
delete_option('bpminifycss_css');
delete_site_option('bpminifycss_css');
delete_option('bpminifycss_css_datauris');
delete_site_option('bpminifycss_css_datauris');
delete_option('bpminifycss_css_nogooglefont');
delete_site_option('bpminifycss_css_nogooglefont');
delete_option('bpminifycss_css_justhead');
delete_site_option('bpminifycss_css_justhead');
delete_option('bpminifycss_css_include_inline');
delete_site_option('bpminifycss_css_include_inline');
delete_option('bpminifycss_css_defer');
delete_site_option('bpminifycss_css_defer');
delete_option('bpminifycss_css_defer_inline');
delete_site_option('bpminifycss_css_defer_inline');
delete_option('bpminifycss_css_inline');
delete_site_option('bpminifycss_css_inline');
delete_option('bpminifycss_css_exclude');
delete_site_option('bpminifycss_css_exclude');
delete_option('bpminifycss_cdn_url');
delete_site_option('bpminifycss_cdn_url');
delete_option('bpminifycss_cachesize_notice');
delete_site_option('bpminifycss_cachesize_notice');

// Delete Transients
delete_transient('bpminifycss_stats');
delete_site_transient('bpminifycss_stats');

// Clear Cron Jobs
wp_clear_scheduled_hook('ao_cachechecker');

