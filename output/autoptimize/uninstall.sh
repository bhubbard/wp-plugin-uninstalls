#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autoptimize_html'
wp option delete 'autoptimize_html_keepcomments'
wp option delete 'autoptimize_html_minify_inline'
wp option delete 'autoptimize_enable_site_config'
wp option delete 'autoptimize_js'
wp option delete 'autoptimize_js_aggregate'
wp option delete 'autoptimize_js_defer_not_aggregate'
wp option delete 'autoptimize_js_defer_inline'
wp option delete 'autoptimize_js_exclude'
wp option delete 'autoptimize_js_trycatch'
wp option delete 'autoptimize_js_justhead'
wp option delete 'autoptimize_js_forcehead'
wp option delete 'autoptimize_js_include_inline'
wp option delete 'autoptimize_css'
wp option delete 'autoptimize_css_aggregate'
wp option delete 'autoptimize_css_exclude'
wp option delete 'autoptimize_css_justhead'
wp option delete 'autoptimize_css_datauris'
wp option delete 'autoptimize_css_defer'
wp option delete 'autoptimize_css_defer_inline'
wp option delete 'autoptimize_css_inline'
wp option delete 'autoptimize_css_include_inline'
wp option delete 'autoptimize_cdn_url'
wp option delete 'autoptimize_cache_clean'
wp option delete 'autoptimize_cache_nogzip'
wp option delete 'autoptimize_optimize_logged'
wp option delete 'autoptimize_optimize_checkout'
wp option delete 'autoptimize_minify_excluded'
wp option delete 'autoptimize_cache_fallback'
wp option delete 'autoptimize_enable_meta_ao_settings'
wp option delete 'autoptimize_installed_before_compatibility'
wp option delete 'autoptimize_ccss_rules'
wp option delete 'autoptimize_ccss_additional'
wp option delete 'autoptimize_ccss_queue'
wp option delete 'autoptimize_ccss_viewport'
wp option delete 'autoptimize_ccss_finclude'
wp option delete 'autoptimize_ccss_rtimelimit'
wp option delete 'autoptimize_ccss_noptimize'
wp option delete 'autoptimize_ccss_debug'
wp option delete 'autoptimize_ccss_key'
wp option delete 'autoptimize_ccss_keyst'
wp option delete 'autoptimize_ccss_loggedin'
wp option delete 'autoptimize_ccss_forcepath'
wp option delete 'autoptimize_service_availablity'
wp option delete 'autoptimize_ccss_deferjquery'
wp option delete 'autoptimize_ccss_domain'
wp option delete 'autoptimize_ccss_unloadccss'
wp option delete 'autoptimize_ccss_version'
wp option delete 'autoptimize_ccss_rlimit'
wp option delete 'autoptimize_imgopt_settings'
wp option delete 'autoptimize_extra_settings'
wp option delete 'autoptimize_pro_boosters'
wp option delete 'autoptimize_pro_pagecache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'autoptimize_ccss_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'autoptimize_js_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'autoptimize_css_%'"
wp option delete 'WpFastestCache'
wp option delete 'siteground_optimizer_optimize_css'
wp option delete 'siteground_optimizer_optimize_javascript'
wp option delete 'siteground_optimizer_combine_javascript'
wp option delete 'siteground_optimizer_combine_css'
wp option delete 'wpo_minify_config'
wp option delete 'autoptimize_css_nogooglefont'

# Delete Transients
wp transient delete 'autoptimize_stats'
wp transient delete 'autoptimize_cache_warmer_protector'
wp transient delete 'autoptimize_banner'
wp transient delete 'autoptimize_ccss_page_templates'
wp transient delete 'ao_ccss_cronwarning'
wp transient delete 'autoptimize_stale_option_buster'

# Clear Cron Jobs
wp cron event delete 'ao_ccss_queue'
wp cron event delete 'ao_ccss_maintenance'
wp cron event delete 'ao_ccss_keychecker'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ao_post_optimize'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ao_post_optimize'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ao_post_optimize'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ao_post_optimize'"
