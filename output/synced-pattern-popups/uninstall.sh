#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sppopups_tldr_enabled'
wp option delete 'sppopups_tldr_prompt_custom'
wp option delete 'sppopups_tldr_prompt'
wp option delete 'sppopups_tldr_cache_ttl'
wp option delete 'sppopups_defaults_pattern'
wp option delete 'sppopups_defaults_tldr'
wp option delete 'sppopups_defaults_gallery'

# Delete Transients
wp transient delete 'sppopups_redirect_after_activation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_pattern_sync_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_pattern_sync_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_pattern_sync_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_pattern_sync_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sppopups_modal_assets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sppopups_modal_assets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sppopups_modal_assets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sppopups_modal_assets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sppopups_gallery_assets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sppopups_gallery_assets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sppopups_gallery_assets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sppopups_gallery_assets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sppopups_support'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sppopups_support'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sppopups_support'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sppopups_support'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
