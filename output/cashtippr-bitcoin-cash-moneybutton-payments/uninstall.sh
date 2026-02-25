#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cashtippr_tables'
wp option delete 'cashtippr_memcached_secret'
wp option delete 'cashtippr_is_installed'
wp option delete 'cashtippr_version'
wp option delete 'cashtippr_settings'

# Clear Cron Jobs
wp cron event delete 'ct_unused_address_search'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tipAmount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tipAmount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tipAmount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tipAmount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'author_bch_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'author_bch_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'author_bch_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'author_bch_address'"
