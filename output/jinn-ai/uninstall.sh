#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jinnai_consumer_key'
wp option delete 'jinnai_consumer_secret'
wp option delete 'jinnai_is_prod_or_dev'
wp option delete 'jinnai_response_data'
wp option delete 'jinnai_api_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
