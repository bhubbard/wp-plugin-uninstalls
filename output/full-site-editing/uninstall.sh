#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'footercredit'
wp option delete 'active_sitewide_plugins'
wp option delete 'site_intent'
wp option delete 'launchpad_screen'
wp option delete 'has_never_published_post'
wp option delete 'was_created_with_blank_canvas_design'
wp option delete 'has_seen_seller_celebration_modal'
wp option delete 'sharing_modal_dismissed'
wp option delete 'wpcom_sharing_modal_dismissed'
wp option delete 'has_seen_video_celebration_modal'
wp option delete 'jetpack_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_fse_sideloaded_image_%' OR option_name LIKE '_site_transient_fse_sideloaded_image_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'newspack_post_subtitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'newspack_post_subtitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'newspack_post_subtitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'newspack_post_subtitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'newspack_sponsor_sponsorship_scope'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'newspack_sponsor_sponsorship_scope'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'newspack_sponsor_sponsorship_scope'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'newspack_sponsor_sponsorship_scope'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'newspack_sponsor_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'newspack_sponsor_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'newspack_sponsor_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'newspack_sponsor_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'newspack_supporter_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'newspack_supporter_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'newspack_supporter_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'newspack_supporter_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sideloaded_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sideloaded_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sideloaded_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sideloaded_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_seen_whats_new_modal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_seen_whats_new_modal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_seen_whats_new_modal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_seen_whats_new_modal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcom_block_editor_nux_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcom_block_editor_nux_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcom_block_editor_nux_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcom_block_editor_nux_status'"
