#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simple_local_avatars'
wp option delete 'active_sitewide_plugins'
wp option delete 'simple_local_avatars_mode'
wp option delete 'simple_local_avatar_default'
wp option delete 'simple_local_avatars_caps'
wp option delete 'simple_local_avatar_caps'
wp option delete 'simple_local_avatars_migrations'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'simple_local_avatar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'simple_local_avatar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'simple_local_avatar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'simple_local_avatar'"
