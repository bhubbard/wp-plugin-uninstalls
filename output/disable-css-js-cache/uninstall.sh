#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disable_css_js_cache_radio'
wp option delete 'disable_css_js_exclude_paths'
wp option delete 'disable_css_js_cache_method'
wp option delete 'browser_caching_enabled'
wp option delete 'browser_cache_duration'
wp option delete 'browser_caching_settings_changed'

