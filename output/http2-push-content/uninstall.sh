#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'http2_push_general_list'
wp option delete 'http2_async_js_list'
wp option delete 'http2_async_css_list'
wp option delete 'push_all_style'
wp option delete 'push_all_script'

