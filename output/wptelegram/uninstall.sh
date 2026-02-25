#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wptelegram_ver'
wp option delete 'wptelegram_telegram'
wp option delete 'wptelegram'
wp option delete 'wptelegram_wordpress'
wp option delete 'wptelegram_message'
wp option delete 'wptelegram_notify'
wp option delete 'wptelegram_proxy'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wptelegram_%'"
wp option delete 'wptelegram_p2tg'

# Delete Transients
wp transient delete 'wptelegram_p2tg_errors'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%sent2tg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%sent2tg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%sent2tg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%sent2tg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%send2tg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%send2tg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%send2tg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%send2tg'"
