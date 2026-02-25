#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'platformly-woocommerce'
wp option delete 'platformly_wc_cid'
wp option delete 'active_sitewide_plugins'
wp option delete 'ply_plugin_cid'
wp option delete 'ply_project_code_active'

# Clear Cron Jobs
wp cron event delete 'ply_wc_remove_old_abandoned_carts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'platformly-woocommerce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'platformly-woocommerce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'platformly-woocommerce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'platformly-woocommerce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'paltformly_wc_is_subscribed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'paltformly_wc_is_subscribed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'paltformly_wc_is_subscribed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'paltformly_wc_is_subscribed'"
