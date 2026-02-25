#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpciteulike_reset_cache'
wp option delete 'wpciteulike_css_style'
wp option delete 'wpciteulike_bibliography_style'
wp option delete 'wpciteulike_title_link'
wp option delete 'wpciteulike_html_cache'
wp option delete 'wpciteulike_reset_html_cache'

