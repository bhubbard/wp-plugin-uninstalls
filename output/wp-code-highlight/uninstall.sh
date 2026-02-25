#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_code_highlight_themes'
wp option delete 'wp_code_highlight_line_numbers'
wp option delete 'wp_code_highlight_button'
wp option delete 'wp_code_highlight_deactivate'

