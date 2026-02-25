#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bytes_route_js_code'
wp option delete 'bytes_route_js_code_backend'
wp option delete 'bytes_route_js_code_wplogin'

