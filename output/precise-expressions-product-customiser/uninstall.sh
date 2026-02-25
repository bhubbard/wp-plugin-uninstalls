#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pepc_load_google_fonts'
wp option delete 'pepc_retain_uploads'
wp option delete 'pepc_uniform_card_layout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pepc_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pepc_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pepc_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pepc_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pepc_mockup_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pepc_mockup_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pepc_mockup_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pepc_mockup_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pepc_bbox_x'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pepc_bbox_x'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pepc_bbox_x'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pepc_bbox_x'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pepc_bbox_y'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pepc_bbox_y'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pepc_bbox_y'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pepc_bbox_y'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pepc_bbox_w'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pepc_bbox_w'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pepc_bbox_w'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pepc_bbox_w'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pepc_bbox_h'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pepc_bbox_h'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pepc_bbox_h'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pepc_bbox_h'"
