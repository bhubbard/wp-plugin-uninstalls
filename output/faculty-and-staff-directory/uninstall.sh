#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fsdirectory_sortstyle'
wp option delete 'fsdirectory_displaystyle'
wp option delete 'fsdirectory_hidethumbnail'
wp option delete 'fsdirectory_stylethumbnail'
wp option delete 'fssettings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facstaffphone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facstaffphone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facstaffphone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facstaffphone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facstaffemail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facstaffemail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facstaffemail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facstaffemail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facstaffwebsite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facstaffwebsite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facstaffwebsite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facstaffwebsite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facstafftwitter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facstafftwitter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facstafftwitter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facstafftwitter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facstafflinkedin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facstafflinkedin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facstafflinkedin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facstafflinkedin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facstafftitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facstafftitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facstafftitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facstafftitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facstaffofficelocation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facstaffofficelocation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facstaffofficelocation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facstaffofficelocation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facstaffnotes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facstaffnotes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facstaffnotes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facstaffnotes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facstaffcompany'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facstaffcompany'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facstaffcompany'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facstaffcompany'"
