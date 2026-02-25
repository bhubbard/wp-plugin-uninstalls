#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tgei-semi-headless-field_status'
wp option delete 'tgei-semi-headless-field_redir_url'
wp option delete 'tgei-semi-headless-field_redir_url_404'
wp option delete 'tgei-semi-headless-field_allow_search'
wp option delete 'tgei-semi-headles-field_allow_homepage'
wp option delete 'tgei-semi-headless-field_allow_homepage'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tgei-semi-headless-allow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tgei-semi-headless-allow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tgei-semi-headless-allow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tgei-semi-headless-allow'"
