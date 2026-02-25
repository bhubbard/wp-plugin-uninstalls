#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'et_dt_templates'
wp option delete 'et_dt_shortcodes'
wp option delete 'et_dt_shortcode_styles'
wp option delete 'et_dt_custom_css'

