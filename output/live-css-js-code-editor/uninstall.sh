#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'live_code_css_field'
wp option delete 'live_code_js_field'
wp option delete 'live_code_header_field'
wp option delete 'live_code_footer_field'
wp option delete 'live_code_admin_css_field'
wp option delete 'live_code_admin_js_field'

