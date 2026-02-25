#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_fl_builder_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_llms_free_lesson'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_llms_free_lesson'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_llms_free_lesson'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_llms_free_lesson'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
