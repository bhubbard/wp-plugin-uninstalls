#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bpminifycss_cache_nogzip'
wp option delete 'bpminifycss_version'
wp option delete 'bpminifycss_cache_clean'
wp option delete 'bpminifycss_show_adv'
wp option delete 'bpminifycss_html'
wp option delete 'bpminifycss_html_keepcomments'
wp option delete 'bpminifycss_js'
wp option delete 'bpminifycss_js_forcehead'
wp option delete 'bpminifycss_js_justhead'
wp option delete 'bpminifycss_js_include_inline'
wp option delete 'bpminifycss_js_exclude'
wp option delete 'bpminifycss_js_trycatch'
wp option delete 'bpminifycss_css'
wp option delete 'bpminifycss_css_datauris'
wp option delete 'bpminifycss_css_nogooglefont'
wp option delete 'bpminifycss_css_justhead'
wp option delete 'bpminifycss_css_include_inline'
wp option delete 'bpminifycss_css_defer'
wp option delete 'bpminifycss_css_defer_inline'
wp option delete 'bpminifycss_css_inline'
wp option delete 'bpminifycss_css_exclude'
wp option delete 'bpminifycss_cdn_url'
wp option delete 'bpminifycss_cachesize_notice'

# Delete Transients
wp transient delete 'bpminifycss_stats'

# Clear Cron Jobs
wp cron event delete 'ao_cachechecker'

