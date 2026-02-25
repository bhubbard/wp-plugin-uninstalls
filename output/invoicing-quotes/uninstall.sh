#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpinv_created_initial_quote_pages'
wp option delete 'wpinv_quotes_activation_redirect'
wp option delete 'wpinv_quotes_flushed_rewrite_rules'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpinv_quote_valid_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpinv_quote_valid_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpinv_quote_valid_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpinv_quote_valid_until'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpinv_quote_decline_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpinv_quote_decline_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpinv_quote_decline_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpinv_quote_decline_reason'"
