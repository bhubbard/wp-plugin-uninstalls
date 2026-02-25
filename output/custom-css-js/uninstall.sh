#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom-css-js-tree'
wp option delete 'ccj_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activation_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_notice'"
wp option delete 'ccj-custom_codes_for_block_editor'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edit_last'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_slug'"
