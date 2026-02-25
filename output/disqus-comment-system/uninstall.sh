#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disqus_sync_token'
wp option delete 'disqus_forum_url'
wp option delete 'disqus_secret_key'
wp option delete 'disqus_admin_access_token'
wp option delete 'disqus_public_key'
wp option delete 'disqus_sso_enabled'
wp option delete 'disqus_sso_button'
wp option delete 'disqus_render_js'
wp option delete 'disqus_last_sync_message'
wp option delete 'disqus_manual_sync'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'disqus_ads_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'disqus_ads_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'disqus_ads_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'disqus_ads_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dsq_thread_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dsq_thread_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dsq_thread_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dsq_thread_id'"
