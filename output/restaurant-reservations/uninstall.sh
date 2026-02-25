#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rtb-settings'
wp option delete 'rtb-version'
wp option delete 'rtb_pending_count'
wp option delete 'RTB_Trial_Happening'
wp option delete 'RTU_Trial_Happening'
wp option delete 'rtb-hide-upgrade-box'
wp option delete 'rtb-installation-time'
wp option delete 'rtb_autodraft_terms_fixed'
wp option delete 'rtb-ultimate-license-key'
wp option delete 'rtb-daily-summary-send-date'
wp option delete 'rtb_enable_payment_debugging'
wp option delete 'rtb_debugging'
wp option delete 'rtb-permission-level'
wp option delete 'mcfrtb_license_key'
wp option delete 'rtb-review-ask-time'
wp option delete 'etfrtb_color_primary'
wp option delete 'etfrtb_color_primary_text'
wp option delete 'etfrtb_color_button'
wp option delete 'etfrtb_color_button_text'
wp option delete 'etfrtb_acknowledgement'
wp option delete 'etfrtb_logo'
wp option delete 'rtb-customizer-booking-settings'
wp option delete 'etfrtb_booking_admin_template'
wp option delete 'etfrtb_booking_admin_headline'
wp option delete 'etfrtb_booking_admin_footer_message'
wp option delete 'etfrtb_booking_user_template'
wp option delete 'etfrtb_booking_user_headline'
wp option delete 'etfrtb_booking_user_footer_message'
wp option delete 'etfrtb_confirmed_user_template'
wp option delete 'etfrtb_confirmed_user_headline'
wp option delete 'etfrtb_confirmed_user_footer_message'
wp option delete 'etfrtb_rejected_user_template'
wp option delete 'etfrtb_rejected_user_headline'
wp option delete 'etfrtb_rejected_user_book_again'
wp option delete 'etfrtb_rejected_user_footer_message'
wp option delete 'etfrtb_admin_notice_template'
wp option delete 'etfrtb_admin_notice_headline'
wp option delete 'etfrtb_admin_notice_footer_message'
wp option delete 'etfrtb_reminder_user_template'
wp option delete 'etfrtb_reminder_user_headline'
wp option delete 'etfrtb_reminder_user_footer_message'
wp option delete 'etfrtb_late_user_template'
wp option delete 'etfrtb_late_user_headline'
wp option delete 'etfrtb_late_user_footer_message'
wp option delete 'etfrtb_booking_admin_footer_contact'
wp option delete 'etfrtb_booking_user_footer_contact'
wp option delete 'etfrtb_confirmed_user_footer_contact'
wp option delete 'etfrtb_rejected_user_footer_contact'
wp option delete 'etfrtb_admin_notice_footer_contact'
wp option delete 'etfrtb_reminder_user_footer_contact'
wp option delete 'etfrtb_late_user_footer_contact'
wp option delete 'rtb-pro-was-active'

# Delete Transients
wp transient delete 'rtb-getting-started'
wp transient delete 'rtb-admin-install-notice'
wp transient delete 'rtb-delete-reservations-check'
wp transient delete 'fsp-helper-notice-dismissed'
wp transient delete 'rtb-ait-iat-plugin-notice-dismissed'

# Clear Cron Jobs
wp cron event delete 'rtb_cron_jobs'
wp cron event delete 'rtb_booking_payment_pending'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cffrtb'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cffrtb'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cffrtb'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cffrtb'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fdm_item_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fdm_item_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fdm_item_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fdm_item_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fdm_menu_item_custom_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fdm_menu_item_custom_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fdm_menu_item_custom_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fdm_menu_item_custom_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtb_append_booking_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtb_append_booking_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtb_append_booking_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtb_append_booking_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtb_reply_to_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtb_reply_to_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtb_reply_to_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtb_reply_to_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtb_reply_to_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtb_reply_to_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtb_reply_to_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtb_reply_to_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtb_admin_email_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtb_admin_email_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtb_admin_email_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtb_admin_email_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rtb_location_removed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rtb_location_removed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rtb_location_removed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rtb_location_removed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
