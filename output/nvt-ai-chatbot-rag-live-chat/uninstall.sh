#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nvtrag_wp_schema_ver'
wp option delete 'nvtrag_setup_done'
wp option delete 'nvtrag_saas_settings'

# Delete Transients
wp transient delete 'nvtrag_wp_activation_redirect'
wp transient delete 'nvtrag_pending_api_key_fill'
wp transient delete 'nvtrag_whoami_cache'
wp transient delete 'nvtrag_unread_sess_count'

# Clear Cron Jobs
wp cron event delete 'nvtrag_cron_auto_crawl'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
