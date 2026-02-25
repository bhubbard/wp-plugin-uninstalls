#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'magical_addons'
wp option delete 'magical_addons_pro'
wp option delete 'magical_headerfooter'
wp option delete 'magical_extra'
wp option delete 'magical_role_manager'
wp option delete 'magical_addons_settings_version'
wp option delete 'mgaddon_ready_items'
wp option delete 'mgaddon_version'
wp option delete 'mg_sales_notice_dismissed'
wp option delete 'mg_info_text_date2'
wp option delete 'magical_review_notice_dismissed'
wp option delete 'mg_install_date'
wp option delete 'mgporv_active'
wp option delete 'magical_role_manager_defaults_set'
wp option delete 'mg_plugin_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_magical_code_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_magical_code_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_magical_code_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_magical_code_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_magical_code_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_magical_code_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_magical_code_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_magical_code_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_magical_code_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_magical_code_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_magical_code_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_magical_code_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_magical_code_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_magical_code_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_magical_code_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_magical_code_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_magical_code_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_magical_code_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_magical_code_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_magical_code_status'"
