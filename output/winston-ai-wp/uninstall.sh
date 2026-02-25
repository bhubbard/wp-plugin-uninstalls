#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'winston_api_token'
wp option delete 'winston_website_id'
wp option delete 'winston_is_premium'
wp option delete 'winston_cert_one'
wp option delete 'winston_cert_two'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-settings'"
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'winston_ai_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
