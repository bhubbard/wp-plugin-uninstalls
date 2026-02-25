#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pastacode_aboutcode_pos'
wp option delete 'pastacode_style'
wp option delete 'pastacode_cm_style'
wp option delete 'pastacode_legacy'
wp option delete 'pastacode_linenumbers'
wp option delete 'pastacode_showinvisible'
wp option delete 'pastacode_cache_duration'
wp option delete 'pastacode_bo_style'
wp option delete 'pastacode_preview'
wp option delete 'pastacode_comments_opt'

