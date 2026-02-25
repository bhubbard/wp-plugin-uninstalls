#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eebmeShortURLeebapikey'
wp option delete 'eebme_plugin_do_activation_redirect'
wp option delete 'eebmeShortURLDomain'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'eebmeShortURLnew%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eebmeShortURL_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eebmeShortURL_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eebmeShortURL_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eebmeShortURL_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eebmeShortURLnew'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eebmeShortURLnew'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eebmeShortURLnew'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eebmeShortURLnew'"
