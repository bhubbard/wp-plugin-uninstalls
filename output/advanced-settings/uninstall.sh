#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advset_guide_shown'
wp option delete 'advset_version'
wp option delete 'advset_version__first_install'
wp option delete 'advanced_settings_settings'
wp option delete 'advset_remove_filters'
wp option delete 'advset_advset'
wp option delete 'advset_code'
wp option delete 'advset_system'
wp option delete 'advset_scripts'
wp option delete 'advset_styles'
wp option delete 'advset_post_types'
wp option delete 'advset_tracked_scripts'
wp option delete 'advset_notice'
wp option delete 'advset_tracked_styles'
wp option delete 'advset_tracksettings_asklater'
wp option delete 'auto_update_plugins'
wp option delete 'powerconfigs'
wp option delete 'adv_post_types'
wp option delete 'advset_tracksettings_choice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'skip_post_thumb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'skip_post_thumb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'skip_post_thumb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'skip_post_thumb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
