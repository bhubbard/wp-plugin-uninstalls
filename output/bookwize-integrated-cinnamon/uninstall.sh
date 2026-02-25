#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bw_apiBaseUrl'
wp option delete 'bw_apiKey'
wp option delete 'bw_hotelId'
wp option delete 'bw_primary_color'
wp option delete 'bw_secondary_color'
wp option delete 'bw_header_color'
wp option delete 'wp-dynamic-css-cache'
wp option delete 'bw_enable_jcc'
wp option delete 'bw_preload'
wp option delete 'bw_currency'
wp option delete 'bw_debug'
wp option delete 'bw_header'
wp option delete 'bw_group_text'
wp option delete 'bw_theme'
wp option delete 'bw_jcc_password'
wp option delete 'bw_jcc_merchant'
wp option delete 'bw_jcc_acquirer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookwize_integrated_page_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookwize_integrated_page_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookwize_integrated_page_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookwize_integrated_page_type'"
