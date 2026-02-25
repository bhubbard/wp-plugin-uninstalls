#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_quotes_flush_rewrite_rules'
wp option delete 'easy-quotes-db-version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'quote_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'quote_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'quote_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'quote_rating'"
