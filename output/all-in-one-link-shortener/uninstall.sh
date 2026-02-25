#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiols_default_provider'
wp option delete 'aiols_auto_generate_on_save'
wp option delete 'aiols_tinyurl_api_key'
wp option delete 'aiols_bitly_token'
wp option delete 'aiols_rebrandly_key'
wp option delete 'aiols_cuttly_key'
wp option delete 'aiols_tly_key'
wp option delete 'aiols_bitly_domain'

# Delete Transients
wp transient delete 'aiols_bulk_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiols_shortlink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiols_shortlink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiols_shortlink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiols_shortlink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiols_last_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiols_last_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiols_last_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiols_last_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aiols_provider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aiols_provider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aiols_provider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aiols_provider'"
