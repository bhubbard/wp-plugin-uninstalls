#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autoblue_connections'
wp option delete 'autoblue_enabled'
wp option delete 'autoblue_log_level'
wp option delete 'autoblue_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_autoblue_at_uri_%' OR option_name LIKE '_site_transient_autoblue_at_uri_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_autoblue_comments_%' OR option_name LIKE '_site_transient_autoblue_comments_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_autoblue_pds_endpoint_%' OR option_name LIKE '_site_transient_autoblue_pds_endpoint_%'"

# Clear Cron Jobs
wp cron event delete 'autoblue_share_to_bluesky'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autoblue_custom_message'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autoblue_custom_message'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autoblue_custom_message'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autoblue_custom_message'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autoblue_shares'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autoblue_shares'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autoblue_shares'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autoblue_shares'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autoblue_post_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autoblue_post_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autoblue_post_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autoblue_post_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autoblue_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autoblue_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autoblue_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autoblue_enabled'"
