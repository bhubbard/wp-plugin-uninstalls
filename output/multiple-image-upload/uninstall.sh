#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'miusettings'
wp option delete 'miu_return_value'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'image_attachment_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'image_attachment_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'image_attachment_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'image_attachment_ids'"
