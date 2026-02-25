#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'optimize_minify_html'
wp option delete 'optimize_minify_css'
wp option delete 'optimize_minify_js'

