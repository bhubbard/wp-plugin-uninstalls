#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qc_choice_cmp_utid'
wp option delete 'qc_choice_cmp_datalayer_push'
wp option delete 'qc_choice_cmp_ccpa_wp_footer'
wp option delete 'qc_choice_vendor_list_version'
wp option delete 'qc_choice_language'
wp option delete 'qc_choice_auto_localize'
wp option delete 'qc_choice_display_ui'
wp option delete 'qc_choice_display_layout'
wp option delete 'qc_choice_min_days_between_ui_displays'
wp option delete 'qc_choice_non_consent_display_frequency'
wp option delete 'qc_choice_post_consent_page'
wp option delete 'qc_choice_publisher_name'
wp option delete 'qc_choice_publisher_logo'
wp option delete 'qc_choice_initial_screen_title_text'
wp option delete 'qc_choice_initial_screen_body_text'
wp option delete 'qc_choice_initial_screen_reject_button_text'
wp option delete 'qc_choice_initial_screen_no_option'
wp option delete 'qc_choice_initial_screen_accept_button_text'
wp option delete 'qc_choice_initial_screen_purpose_link_text'
wp option delete 'qc_choice_purpose_screen_header_title_text'
wp option delete 'qc_choice_purpose_screen_title_text'
wp option delete 'qc_choice_purpose_screen_body_text'
wp option delete 'qc_choice_purpose_screen_enable_all_button_text'
wp option delete 'qc_choice_purpose_screen_vendor_link_text'
wp option delete 'qc_choice_purpose_screen_cancel_button_text'
wp option delete 'qc_choice_purpose_screen_save_and_exit_button_text'
wp option delete 'qc_choice_vendor_screen_title_text'
wp option delete 'qc_choice_vendor_screen_body_text'
wp option delete 'qc_choice_vendor_screen_accept_all_button_text'
wp option delete 'qc_choice_vendor_screen_reject_all_button_text'
wp option delete 'qc_choice_vendor_screen_purposes_link_text'
wp option delete 'qc_choice_vendor_screen_cancel_button_text'
wp option delete 'qc_choice_vendor_screen_save_and_exit_button_text'
wp option delete 'qc_choice_vendors'
wp option delete 'qc_choice_initial_screen_custom_link_1_text'
wp option delete 'qc_choice_initial_screen_custom_link_1_url'
wp option delete 'qc_choice_initial_screen_custom_link_2_text'
wp option delete 'qc_choice_initial_screen_custom_link_2_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
