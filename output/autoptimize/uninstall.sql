-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('autoptimize_html', 'autoptimize_html_keepcomments', 'autoptimize_html_minify_inline', 'autoptimize_enable_site_config', 'autoptimize_js', 'autoptimize_js_aggregate', 'autoptimize_js_defer_not_aggregate', 'autoptimize_js_defer_inline', 'autoptimize_js_exclude', 'autoptimize_js_trycatch', 'autoptimize_js_justhead', 'autoptimize_js_forcehead', 'autoptimize_js_include_inline', 'autoptimize_css', 'autoptimize_css_aggregate', 'autoptimize_css_exclude', 'autoptimize_css_justhead', 'autoptimize_css_datauris', 'autoptimize_css_defer', 'autoptimize_css_defer_inline', 'autoptimize_css_inline', 'autoptimize_css_include_inline', 'autoptimize_cdn_url', 'autoptimize_cache_clean', 'autoptimize_cache_nogzip', 'autoptimize_optimize_logged', 'autoptimize_optimize_checkout', 'autoptimize_minify_excluded', 'autoptimize_cache_fallback', 'autoptimize_enable_meta_ao_settings', 'autoptimize_installed_before_compatibility', 'autoptimize_ccss_rules', 'autoptimize_ccss_additional', 'autoptimize_ccss_queue', 'autoptimize_ccss_viewport', 'autoptimize_ccss_finclude', 'autoptimize_ccss_rtimelimit', 'autoptimize_ccss_noptimize', 'autoptimize_ccss_debug', 'autoptimize_ccss_key', 'autoptimize_ccss_keyst', 'autoptimize_ccss_loggedin', 'autoptimize_ccss_forcepath', 'autoptimize_service_availablity', 'autoptimize_ccss_deferjquery', 'autoptimize_ccss_domain', 'autoptimize_ccss_unloadccss', 'autoptimize_ccss_version', 'autoptimize_ccss_rlimit', 'autoptimize_imgopt_settings');
DELETE FROM wp_options WHERE option_name IN ('autoptimize_extra_settings', 'autoptimize_pro_boosters', 'autoptimize_pro_pagecache', 'WpFastestCache', 'siteground_optimizer_optimize_css', 'siteground_optimizer_optimize_javascript', 'siteground_optimizer_combine_javascript', 'siteground_optimizer_combine_css', 'wpo_minify_config', 'autoptimize_css_nogooglefont', 'autoptimize_stats', 'autoptimize_cache_warmer_protector', 'autoptimize_banner', 'autoptimize_ccss_page_templates', 'ao_ccss_cronwarning', 'autoptimize_stale_option_buster');
DELETE FROM wp_options WHERE option_name LIKE 'autoptimize_ccss_%';
DELETE FROM wp_options WHERE option_name LIKE 'autoptimize_js_%';
DELETE FROM wp_options WHERE option_name LIKE 'autoptimize_css_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ao_post_optimize');
DELETE FROM wp_usermeta WHERE meta_key IN ('ao_post_optimize');
DELETE FROM wp_termmeta WHERE meta_key IN ('ao_post_optimize');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ao_post_optimize');

