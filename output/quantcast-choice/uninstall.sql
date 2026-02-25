-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('qc_choice_cmp_utid', 'qc_choice_cmp_datalayer_push', 'qc_choice_cmp_ccpa_wp_footer', 'qc_choice_vendor_list_version', 'qc_choice_language', 'qc_choice_auto_localize', 'qc_choice_display_ui', 'qc_choice_display_layout', 'qc_choice_min_days_between_ui_displays', 'qc_choice_non_consent_display_frequency', 'qc_choice_post_consent_page', 'qc_choice_publisher_name', 'qc_choice_publisher_logo', 'qc_choice_initial_screen_title_text', 'qc_choice_initial_screen_body_text', 'qc_choice_initial_screen_reject_button_text', 'qc_choice_initial_screen_no_option', 'qc_choice_initial_screen_accept_button_text', 'qc_choice_initial_screen_purpose_link_text', 'qc_choice_purpose_screen_header_title_text', 'qc_choice_purpose_screen_title_text', 'qc_choice_purpose_screen_body_text', 'qc_choice_purpose_screen_enable_all_button_text', 'qc_choice_purpose_screen_vendor_link_text', 'qc_choice_purpose_screen_cancel_button_text', 'qc_choice_purpose_screen_save_and_exit_button_text', 'qc_choice_vendor_screen_title_text', 'qc_choice_vendor_screen_body_text', 'qc_choice_vendor_screen_accept_all_button_text', 'qc_choice_vendor_screen_reject_all_button_text', 'qc_choice_vendor_screen_purposes_link_text', 'qc_choice_vendor_screen_cancel_button_text', 'qc_choice_vendor_screen_save_and_exit_button_text', 'qc_choice_vendors', 'qc_choice_initial_screen_custom_link_1_text', 'qc_choice_initial_screen_custom_link_1_url', 'qc_choice_initial_screen_custom_link_2_text', 'qc_choice_initial_screen_custom_link_2_url');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_page_template');

