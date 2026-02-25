-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bpminifycss_cache_nogzip', 'bpminifycss_version', 'bpminifycss_cache_clean', 'bpminifycss_show_adv', 'bpminifycss_html', 'bpminifycss_html_keepcomments', 'bpminifycss_js', 'bpminifycss_js_forcehead', 'bpminifycss_js_justhead', 'bpminifycss_js_include_inline', 'bpminifycss_js_exclude', 'bpminifycss_js_trycatch', 'bpminifycss_css', 'bpminifycss_css_datauris', 'bpminifycss_css_nogooglefont', 'bpminifycss_css_justhead', 'bpminifycss_css_include_inline', 'bpminifycss_css_defer', 'bpminifycss_css_defer_inline', 'bpminifycss_css_inline', 'bpminifycss_css_exclude', 'bpminifycss_cdn_url', 'bpminifycss_cachesize_notice', 'bpminifycss_stats');

