#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ftf_fediverse_embeds_version'
wp option delete 'ftf_fediverse_embeds_deleted_posts'
wp option delete 'ftf_fediverse_embeds_theme'
wp option delete 'ftf_fediverse_embeds_data_refresh_enabled'
wp option delete 'ftf_fediverse_embeds_data_refresh_minutes'
wp option delete 'ftf_fediverse_embeds_show_metrics'
wp option delete 'ftf_fediverse_embeds_show_post_labels'
wp option delete 'ftf_fediverse_embeds_include_bootstrap_styles'
wp option delete 'ftf_fediverse_embeds_custom_styles'
wp option delete 'ftf_fediverse_embeds_archival_mode'

