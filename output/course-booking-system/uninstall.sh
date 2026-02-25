#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'course_booking_system_custom_slug'
wp option delete 'course_booking_system_booking_in_advance'
wp option delete 'course_booking_system_price_level_for_lower_course'
wp option delete 'woocommerce_file_download_method'
wp option delete 'woocommerce_downloads_require_login'
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'course_booking_system_intro'
wp option delete 'course_booking_system_deleting_in_advance'
wp option delete 'course_booking_system_auto_cancel'
wp option delete 'course_booking_system_auto_cancel_number'
wp option delete 'course_booking_system_auto_cancel_advance'
wp option delete 'course_booking_system_expire_extend'
wp option delete 'course_booking_system_waitlist_auto_booking'
wp option delete 'course_booking_system_design'
wp option delete 'course_booking_system_show_availability'
wp option delete 'course_booking_system_show_cancelled'
wp option delete 'course_booking_system_message_offset'
wp option delete 'course_booking_system_license'
wp option delete 'course_booking_system_price_level_title'
wp option delete 'course_booking_system_price_level_title_2'
wp option delete 'course_booking_system_price_level_title_3'
wp option delete 'course_booking_system_price_level_title_4'
wp option delete 'course_booking_system_price_level_title_5'
wp option delete 'course_booking_system_abo_expire'
wp option delete 'course_booking_system_abo_period'
wp option delete 'course_booking_system_abo_alternate'
wp option delete 'course_booking_system_holiday_new_year'
wp option delete 'course_booking_system_holiday_epiphany'
wp option delete 'course_booking_system_holiday_womens_day'
wp option delete 'course_booking_system_holiday_labor_day'
wp option delete 'course_booking_system_holiday_national_holiday_switzerland'
wp option delete 'course_booking_system_holiday_national_holiday'
wp option delete 'course_booking_system_holiday_national_holiday_austria'
wp option delete 'course_booking_system_holiday_reformation_day'
wp option delete 'course_booking_system_holiday_all_saints_day'
wp option delete 'course_booking_system_holiday_day_of_prayer_and_repentance'
wp option delete 'course_booking_system_holiday_christmas_eve'
wp option delete 'course_booking_system_holiday_christmas_day_1'
wp option delete 'course_booking_system_holiday_christmas_day_2'
wp option delete 'course_booking_system_holiday_new_years_eve'
wp option delete 'course_booking_system_holiday_good_friday'
wp option delete 'course_booking_system_holiday_easter_sunday'
wp option delete 'course_booking_system_holiday_easter_monday'
wp option delete 'course_booking_system_holiday_ascension'
wp option delete 'course_booking_system_holiday_whit_sunday'
wp option delete 'course_booking_system_holiday_whit_monday'
wp option delete 'course_booking_system_holiday_corpus_christi'
wp option delete 'course_booking_system_holiday_start'
wp option delete 'course_booking_system_holiday_end'
wp option delete 'course_booking_system_holiday_description'
wp option delete 'course_booking_system_opening'
wp option delete 'course_booking_system_woocommerce_auto_complete_order'
wp option delete 'course_booking_system_woocommerce_birthday'
wp option delete 'course_booking_system_woocommerce_birthday_email'
wp option delete 'course_booking_system_woocommerce_referral'
wp option delete 'course_booking_system_woocommerce_referral_price_level'
wp option delete 'course_booking_system_woocommerce_referral_limit'
wp option delete 'course_booking_system_bookings_past'
wp option delete 'course_booking_system_date_format_short'
wp option delete 'course_booking_system_email_deleting'
wp option delete 'course_booking_system_email_booking'
wp option delete 'course_booking_system_email_cancel'
wp option delete 'course_booking_system_email_cancel_address'
wp option delete 'course_booking_system_email_expire'
wp option delete 'course_booking_system_email_waitlist'
wp option delete 'course_booking_system_email_waitlist_address'
wp option delete 'course_booking_system_email_account_deleting'
wp option delete 'course_booking_system_email_waitlist_subject'
wp option delete 'course_booking_system_email_waitlist_content'
wp option delete 'course_booking_system_email_invitation_subject'
wp option delete 'course_booking_system_email_invitation_content'
wp option delete 'course_booking_system_email_expire_weeks'
wp option delete 'course_booking_system_email_expire_subject'
wp option delete 'course_booking_system_email_expire_content'
wp option delete 'course_booking_system_email_expire_content_2'
wp option delete 'course_booking_system_email_flat_subject'
wp option delete 'course_booking_system_email_flat_content'
wp option delete 'course_booking_system_email_flat_content_2'
wp option delete 'course_booking_system_email_birthday_subject'
wp option delete 'course_booking_system_email_birthday_content'
wp option delete 'course_booking_system_phone'
wp option delete 'course_booking_system_sms'
wp option delete 'course_booking_system_sms_sender_name'
wp option delete 'course_booking_system_sms_token'
wp option delete 'course_booking_system_sms_waitlist'
wp option delete 'course_booking_system_sms_invitation'
wp option delete 'course_booking_system_sms_auto_cancel'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'woocommerce_email_base_color'
wp option delete 'course_booking_system_db_version'
wp option delete 'course_booking_system_is_licensed'
wp option delete 'woocommerce_feature_email_improvements_enabled'
wp option delete 'woocommerce_email_header_alignment'
wp option delete 'woocommerce_email_font_family'
wp option delete 'woocommerce_email_header_image'
wp option delete 'woocommerce_email_header_image_width'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'woocommerce_email_text_color'
wp option delete 'woocommerce_redemption_settings'
wp option delete 'woocommerce_checkout_phone_field'
wp option delete 'woocommerce_shop_page_display'

# Clear Cron Jobs
wp cron event delete 'cbs_cron_quarterly'
wp cron event delete 'cbs_cron_hourly'
wp cron event delete 'cbs_cron_daily'
wp cron event delete 'cbs_cron_weekly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'free'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'free'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'free'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'free'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'attendance'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'attendance'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'attendance'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'attendance'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invitation_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invitation_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invitation_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invitation_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invitation_link_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invitation_link_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invitation_link_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invitation_link_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'text_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'text_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'text_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'text_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timetable_custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timetable_custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timetable_custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timetable_custom_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'location_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'location_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'location_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'location_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo_3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo_3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo_3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo_3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo_10'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo_10'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo_10'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo_10'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo_course'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo_course'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo_course'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo_course'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo_course_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo_course_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo_course_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo_course_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo_course_3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo_course_3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo_course_3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo_course_3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo_course_4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo_course_4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo_course_4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo_course_4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo_course_5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo_course_5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo_course_5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo_course_5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo_course_7'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo_course_7'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo_course_7'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo_course_7'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo_course_8'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo_course_8'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo_course_8'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo_course_8'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo_course_9'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo_course_9'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo_course_9'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo_course_9'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo_course_10'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo_course_10'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo_course_10'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo_course_10'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flat_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flat_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flat_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flat_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flat_3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flat_3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flat_3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flat_3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flat_4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flat_4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flat_4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flat_4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flat_5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flat_5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flat_5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flat_5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo_expire'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo_expire'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo_expire'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo_expire'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo_course_6'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo_course_6'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo_course_6'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo_course_6'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'abo_alternate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'abo_alternate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'abo_alternate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'abo_alternate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flat_expire'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flat_expire'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flat_expire'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flat_expire'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flat_expire_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flat_expire_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flat_expire_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flat_expire_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flat_expire_3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flat_expire_3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flat_expire_3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flat_expire_3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flat_expire_4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flat_expire_4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flat_expire_4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flat_expire_4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'flat_expire_5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'flat_expire_5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'flat_expire_5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'flat_expire_5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'card'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'card'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'card'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'card'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expire'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expire'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expire'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expire'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'card_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'card_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'card_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'card_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expire_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expire_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expire_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expire_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'card_3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'card_3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'card_3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'card_3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expire_3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expire_3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expire_3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expire_3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'card_4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'card_4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'card_4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'card_4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expire_4'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expire_4'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expire_4'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expire_4'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'card_5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'card_5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'card_5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'card_5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expire_5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expire_5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expire_5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expire_5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'birthday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'birthday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'birthday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'birthday'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'notifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_address_1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redeem_price_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redeem_price_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redeem_price_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redeem_price_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redeem_quantity'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redeem_quantity'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redeem_quantity'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redeem_quantity'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redeem_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redeem_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redeem_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redeem_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redeem_expiry_end'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redeem_expiry_end'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redeem_expiry_end'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redeem_expiry_end'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_price_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_price_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_price_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_price_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_url_password'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_url_password'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_url_password'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_url_password'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_price_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_price_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_price_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_price_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redeem_price_level_mixed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redeem_price_level_mixed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redeem_price_level_mixed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redeem_price_level_mixed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redeem_price_level_upgrade'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redeem_price_level_upgrade'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redeem_price_level_upgrade'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redeem_price_level_upgrade'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redeem_price_level_2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redeem_price_level_2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redeem_price_level_2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redeem_price_level_2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redeem_flat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redeem_flat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redeem_flat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redeem_flat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_redeem_expiry_fixed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_redeem_expiry_fixed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_redeem_expiry_fixed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_redeem_expiry_fixed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_purchasable_once'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_purchasable_once'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_purchasable_once'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_purchasable_once'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_start_fixed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_start_fixed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_start_fixed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_start_fixed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_subscription_start'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_subscription_start'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_subscription_start'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_subscription_start'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_video_expiry'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_video_expiry'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_video_expiry'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_video_expiry'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_last_name'"
