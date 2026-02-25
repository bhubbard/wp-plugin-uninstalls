#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'static_minify_css'
wp option delete 'static_critical_enable'
wp option delete 'static_exclude_css'
wp option delete 'static_critical_css'
wp option delete 'static_minify_js'
wp option delete 'static_exclude_js'
wp option delete 'static_minify_html'
wp option delete 'wp_static_page'
wp option delete 'static_directory'
wp option delete 'wp_static_version'
wp option delete 'static_page_field'
wp option delete 'static_exclude_url'

