#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yp_purchase_code'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_css'"
wp option delete 'wt_css'
wp option delete 'yp-output-option'
wp option delete 'yp-draft-mode'
wp option delete 'yp-default-global'
wp option delete 'wt_search_css'
wp option delete 'wt_tag_css'
wp option delete 'wt_category_css'
wp option delete 'wt_archive_css'
wp option delete 'wt_author_css'
wp option delete 'wt_404_css'
wp option delete 'wt_home_css'
wp option delete 'wt_login_css'
wp option delete 'wt_register_css'
wp option delete 'wt_lostpassword_css'
wp option delete 'yp_selector_comments'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'yp_anim_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'yp_op_%'"
wp option delete 'wt_styles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_styles'"
wp option delete 'yp_new_custom_CSS_dir'
wp option delete 'yp_700_db_updateX'
wp option delete 'yp_live_view_css_data'
wp option delete 'wt_author_styles'
wp option delete 'wt_tag_styles'
wp option delete 'wt_category_styles'
wp option delete 'wt_archive_styles'
wp option delete 'wt_404_styles'
wp option delete 'wt_search_styles'
wp option delete 'wt_home_styles'
wp option delete 'yp_revisions'

# Delete Transients
wp transient delete 'wyp_plugin_active_notice'
wp transient delete 'wyp_welcome_screen_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wt_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wt_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wt_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wt_styles'"
