#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'advgb_settings'
wp option delete 'advgb_custom_styles'
wp option delete 'advgb_recaptcha_config'
wp option delete 'org_series_options'
wp option delete 'advgb_blocks_default_config'
wp option delete 'advgb_blocks_list'
wp option delete 'advgb_maybe_new_blocks'
wp option delete 'advgb_gutenberg_version'
wp option delete 'advgb_blocks_user_roles'
wp option delete 'advgb_contacts_saved'
wp option delete 'advgb_email_sender'
wp option delete 'advgb_newsletter_saved'
wp option delete 'advgb_block_controls'
wp option delete 'advgb_block_control_presets'
wp option delete 'advgb_version'
wp option delete 'advgb_jureview_installation_time'
wp option delete 'advgb_jufeedback_version'
wp option delete 'ppb_reviews_installed_on'
wp option delete 'advgb_reviews_installed_on'

# Delete Transients
wp transient delete 'advgb_auto_insert_notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_series_part_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_series_part_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_series_part_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_series_part_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_series_part'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_series_part'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_series_part'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_series_part'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advgb_blocks_editor_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advgb_blocks_editor_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advgb_blocks_editor_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advgb_blocks_editor_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'advgb_blocks_columns_visual_guide'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'advgb_blocks_columns_visual_guide'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'advgb_blocks_columns_visual_guide'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'advgb_blocks_columns_visual_guide'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advgb_block_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advgb_block_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advgb_block_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advgb_block_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advgb_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advgb_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advgb_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advgb_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advgb_blocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advgb_blocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advgb_blocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advgb_blocks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advgb_position_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advgb_position_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advgb_position_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advgb_position_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advgb_post_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advgb_post_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advgb_post_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advgb_post_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advgb_taxonomies'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advgb_taxonomies'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advgb_taxonomies'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advgb_taxonomies'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advgb_authors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advgb_authors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advgb_authors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advgb_authors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advgb_post_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advgb_post_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advgb_post_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advgb_post_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advgb_exclude_post_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advgb_exclude_post_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advgb_exclude_post_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advgb_exclude_post_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advgb_post_months'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advgb_post_months'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advgb_post_months'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advgb_post_months'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advgb_post_years'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advgb_post_years'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advgb_post_years'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advgb_post_years'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advgb_excluded_blocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advgb_excluded_blocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advgb_excluded_blocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advgb_excluded_blocks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_advgb_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_advgb_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_advgb_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_advgb_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'roles_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'roles_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'roles_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'roles_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blocks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blocks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blocks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blocks'"
