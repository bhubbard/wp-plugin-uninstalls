#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'katex_load_assets_conditionally'
wp option delete 'katex_enable_latex_shortcode'
wp option delete 'katex_version'
wp option delete 'katex_use_jsdelivr'

