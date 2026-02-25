#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pdpa_thailand_settings'
wp option delete 'pdpa_thailand_msg'
wp option delete 'pdpa_thailand_cookies'
wp option delete 'pdpa_thailand_appearance'
wp option delete 'pdpa_thailand_js_version'
wp option delete 'pdpa_thailand_css_version'
wp option delete 'pdpa_thailand_installed'
wp option delete 'pdpa_thailand_advanced'
wp option delete 'pdpa_thailand_license_status'
wp option delete 'pdpa_thailand_license_key'

# Delete Transients
wp transient delete 'pdpa_thailand_script'
wp transient delete 'pdpa_thailand_style'
wp transient delete 'pdpa_thailand_rating'

