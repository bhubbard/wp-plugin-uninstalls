#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'conwr_email'
wp option delete 'conwr_api_key'
wp option delete 'conwr_edited_post_id'
wp option delete 'conwr_verified'
wp option delete 'conwr_admin_message'
wp option delete 'conwr_adjust_every'
wp option delete 'conwr_best_feed'
wp option delete 'conwr_hide_body'
wp option delete 'conwr_ignore_users'
wp option delete 'conwr_search_engines'
wp option delete 'conwr_skip_pages'
wp option delete 'conwr_use_js'
wp option delete 'stcon_api_key'
wp option delete 'stcon_email'
wp option delete 'scmtt_adjust_every'
wp option delete 'scmtt_best_feed'
wp option delete 'scmtt_hide_body'
wp option delete 'scmtt_ignore_users'
wp option delete 'scmtt_search_engines'
wp option delete 'scmtt_skip_pages'
wp option delete 'scmtt_use_js'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'steady_content_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'steady_content_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'steady_content_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'steady_content_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conwr_fi_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conwr_fi_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conwr_fi_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conwr_fi_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conwr_fi_href'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conwr_fi_href'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conwr_fi_href'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conwr_fi_href'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conwr_fi_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conwr_fi_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conwr_fi_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conwr_fi_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conwr_sc_post_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conwr_sc_post_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conwr_sc_post_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conwr_sc_post_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_conwr_is_preview'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_conwr_is_preview'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_conwr_is_preview'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_conwr_is_preview'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
