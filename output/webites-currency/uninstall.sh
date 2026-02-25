#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wbcp_display_currencies_array'
wp option delete 'wbcp_display_after_content'
wp option delete 'wbcp_display_header_before'
wp option delete 'wbcp_display_text_after'

