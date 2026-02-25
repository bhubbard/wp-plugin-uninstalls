#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wtfe_element_effects'
wp option delete 'wtfe_advanced_accordion'
wp option delete 'wtfe_advanced_headings'
wp option delete 'wtfe_animated_text'
wp option delete 'wtfe_button'
wp option delete 'wtfe_countdown'
wp option delete 'wtfe_darkmode'
wp option delete 'wtfe_distorted_headings'
wp option delete 'wtfe_scrolling_text'
wp option delete 'wtfe_qr_code'
wp option delete 'wpkoi_settings'
wp option delete 'elementor_onboarded'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_assets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_controls_usage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpkoi_show_review_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpkoi_show_review_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpkoi_show_review_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpkoi_show_review_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpkoi-full-width-content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpkoi-full-width-content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpkoi-full-width-content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpkoi-full-width-content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpkoi-transparent-header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpkoi-transparent-header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpkoi-transparent-header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpkoi-transparent-header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpkoi_review_notice_remind_me_later'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpkoi_review_notice_remind_me_later'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpkoi_review_notice_remind_me_later'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpkoi_review_notice_remind_me_later'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpkoi_review_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpkoi_review_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpkoi_review_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpkoi_review_dismissed'"
