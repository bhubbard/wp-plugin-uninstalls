#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aps-content-moderator-cm-settings-data_access_key'
wp option delete 'aps-content-moderator-cm-settings-data_access_url'
wp option delete 'aps-content-moderator-cm-settings_category1-value'
wp option delete 'aps-content-moderator-cm-settings_category2-value'
wp option delete 'aps-content-moderator-cm-settings_category3-value'
wp option delete 'aps-content-moderator-cm-settings_ignore-pii'
wp option delete 'aps-content-moderator-cm-settings_comment-threshold'
wp option delete 'aps-content-moderator-cm-settings_comment-max-length-note'
wp option delete 'aps-content-moderator-cm-settings_comment-field-id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CmTextResult'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CmTextResult'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CmTextResult'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CmTextResult'"
