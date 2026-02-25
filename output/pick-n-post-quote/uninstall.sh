#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pick_n_post_quote'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pick_n_post_quote'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pick_n_post_quote'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pick_n_post_quote'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pick_n_post_quote_author'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pick_n_post_quote_author'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pick_n_post_quote_author'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pick_n_post_quote_author'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pick_n_post_quote_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pick_n_post_quote_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pick_n_post_quote_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pick_n_post_quote_source'"
