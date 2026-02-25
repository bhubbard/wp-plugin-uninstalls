#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'default_language'
wp option delete 'default_inline'
wp option delete 'default_line_numbers'
wp option delete 'custom_prism_css'
wp option delete 'custom_prism_js'
wp option delete 'notice_warn_theme_css'

