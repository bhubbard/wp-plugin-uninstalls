#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'levelup_library_settings'
wp option delete 'levelup-library-version'
wp option delete 'levelup-library-loaded-version'
wp option delete '_elementor_global_css'
wp option delete 'levelup_default_designs_load'
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'

# Clear Cron Jobs
wp cron event delete 'levelup_daily_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'design_unique_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'design_unique_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'design_unique_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'design_unique_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'design_preview_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'design_preview_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'design_preview_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'design_preview_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'design_feature_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'design_feature_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'design_feature_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'design_feature_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amp_html_markup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amp_html_markup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amp_html_markup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amp_html_markup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'non_amp_html_markup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'non_amp_html_markup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'non_amp_html_markup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'non_amp_html_markup'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'design_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'design_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'design_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'design_settings'"
