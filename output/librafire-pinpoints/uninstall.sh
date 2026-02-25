#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'librafire_pinpoints_deferred_admin_notices'
wp option delete 'librafire_pinpoints_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'lf_caption_text_color'
wp option delete 'lf_default_dot_size'
wp option delete 'lf_caption_text_font_size'
wp option delete 'lf_default_dot_caption_opacity'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'lf_post_dots_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'lf_post_dots_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'lf_post_dots_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'lf_post_dots_%'"
