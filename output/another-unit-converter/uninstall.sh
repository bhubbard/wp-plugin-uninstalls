#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aucp_settings'

# Delete Transients
wp transient delete 'aucp-exchange-rates'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_aucp_api_key_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_aucp_api_key_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_aucp_api_key_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_aucp_api_key_notice'"
