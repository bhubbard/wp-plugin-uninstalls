#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7rt_selected_http_headers'
wp option delete 'include_http_header_in_admin_email'

