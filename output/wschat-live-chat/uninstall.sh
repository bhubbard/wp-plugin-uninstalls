#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_never_ask_again'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_review_will_do_it_later'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_troubleshoot_never_ask_again'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_unique_product_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_licence_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_instance_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activation_status'"
wp option delete 'active_sitewide_plugins'
wp option delete 'wschat_activation_status'
wp option delete 'wschat_geo_ip_ttl'

# Delete Transients
wp transient delete 'wschat-admin-pusher-notice-status'
wp transient delete 'update_core'
wp transient delete 'random_seed'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wschat_online_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wschat_online_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wschat_online_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wschat_online_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_capabilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_capabilities'"
