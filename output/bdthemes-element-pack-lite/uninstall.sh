#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bdt_biggopti_dismissals'
wp option delete 'ep_custom_css'
wp option delete 'ep_custom_js'
wp option delete 'ep_custom_css_2'
wp option delete 'ep_custom_js_2'
wp option delete 'ep_excluded_pages'
wp option delete 'element-pack-minified-asset-manager-version'
wp option delete 'element_pack_active_modules'
wp option delete 'element_pack_elementor_extend'
wp option delete 'element_pack_third_party_widget'
wp option delete 'element_pack_api_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_installed'"
wp option delete 'element_pack_activation_source'
wp option delete 'bdtep_setup_wizard_completed'
wp option delete 'BDTEP_TPL_DB_VER'
wp option delete 'elementor_viewport_lg'
wp option delete 'elementor_viewport_md'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elementpack_twitter_access_token_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dismissed_biggopti_%' OR option_name LIKE '_site_transient_dismissed_biggopti_%'"
wp transient delete 'ep-bitcoin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rooten_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rooten_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rooten_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rooten_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bdthemes_tm_company_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bdthemes_tm_company_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bdthemes_tm_company_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bdthemes_tm_company_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bdthemes_tm_platform'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bdthemes_tm_platform'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bdthemes_tm_platform'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bdthemes_tm_platform'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bdthemes_tm_review_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bdthemes_tm_review_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bdthemes_tm_review_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bdthemes_tm_review_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bdthemes_tm_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bdthemes_tm_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bdthemes_tm_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bdthemes_tm_rating'"
