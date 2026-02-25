#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'superwebshare_version'
wp option delete 'superwebshare_settings'
wp option delete 'superwebshare_floatingsettings'
wp option delete 'superwebshare_floating_settings'
wp option delete 'superwebshare_inline_settings'
wp option delete 'superwebshare_fallback_settings'
wp option delete 'superwebshare_appearance_settings'

# Delete Transients
wp transient delete 'superwebshare_admin_notice_activation'
wp transient delete 'superwebshare_admin_notice_upgrade_complete'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_superwebshare_post_inline_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_superwebshare_post_inline_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_superwebshare_post_inline_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_superwebshare_post_inline_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_superwebshare_post_floating_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_superwebshare_post_floating_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_superwebshare_post_floating_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_superwebshare_post_floating_active'"
