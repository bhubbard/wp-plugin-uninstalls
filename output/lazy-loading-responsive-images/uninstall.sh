#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lazy_load_responsive_images_disabled_classes'
wp option delete 'lazy_load_responsive_images_additional_filters'
wp option delete 'lazy_load_responsive_images_enable_for_iframes'
wp option delete 'lazy_load_responsive_images_native_loading_plugin'
wp option delete 'lazy_load_responsive_images_unveilhooks_plugin'
wp option delete 'lazy_load_responsive_images_enable_for_background_images'
wp option delete 'lazy_load_responsive_images_enable_for_videos'
wp option delete 'lazy_load_responsive_images_enable_for_audios'
wp option delete 'lazy_load_responsive_images_loading_spinner'
wp option delete 'lazy_load_responsive_images_loading_spinner_color'
wp option delete 'lazy_load_responsive_images_granular_disable_option'
wp option delete 'lazy_load_responsive_images_process_complete_markup'
wp option delete 'lazy_load_responsive_images_lazysizes_config'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazy_load_responsive_images_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazy_load_responsive_images_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazy_load_responsive_images_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazy_load_responsive_images_disabled'"
