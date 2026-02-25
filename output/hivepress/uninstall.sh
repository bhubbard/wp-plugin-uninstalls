#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hp_listings_per_page'
wp option delete 'hp_listings_featured_per_page'
wp option delete 'hp_listings_related_per_page'
wp option delete 'hp_vendors_per_page'
wp option delete 'hp_core_activated'
wp option delete 'hp_extensions_number'
wp option delete 'hp_installed_time'
wp option delete 'hp_core_version'
wp option delete 'hp_admin_dismissed_notices'
wp option delete 'hp_permalinks'
wp option delete 'hp_hivepress_license_key'
wp option delete 'hp_user_disable_backend'
wp option delete 'hp_hivepress_allow_tracking'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_related_criteria'"
wp option delete 'hp_recaptcha_site_key'
wp option delete 'hp_recaptcha_secret_key'
wp option delete 'hp_recaptcha_forms'
wp option delete 'hp_google_client_id'
wp option delete 'hp_google_client_secret'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_access_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_token_expiration'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_refresh_token'"
wp option delete 'hp_listing_title_format'
wp option delete 'hp_listing_allow_video'
wp option delete 'hp_listing_enable_moderation'
wp option delete 'hp_listing_expiration_period'
wp option delete 'hp_listing_storage_period'
wp option delete 'hp_page_listing_submission_terms'
wp option delete 'litespeed.conf.cache-priv'
wp option delete 'rewrite_rules'
wp option delete 'hp_user_verify_email'
wp option delete 'hp_user_display_name'
wp option delete 'hp_user_generate_username'
wp option delete 'hp_page_user_registration_terms'
wp option delete 'hp_user_display_online'
wp option delete 'hp_user_enable_display'
wp option delete 'hp_vendor_display_name'
wp option delete 'hp_vendor_enable_display'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_custom_orders_table_data_sync_enabled'
wp option delete 'woocommerce_custom_orders_table_enabled'
wp option delete 'hp_listing_enable_reporting'
wp option delete 'hp_page_listings'
wp option delete 'hp_page_listings_display_categories'
wp option delete 'hp_listing_enable_submission'
wp option delete 'hp_user_enable_registration'
wp option delete 'hp_user_allow_deletion'
wp option delete 'hp_page_vendors'
wp option delete 'hp_vendor_enable_registration'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'hp_email_%'"
wp option delete 'hp_listing_enable_image_preview'
wp option delete 'hp_listing_enable_image_zoom'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_icon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_icon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_icon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_icon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_order'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_expire_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_expire_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_expire_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_expire_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_expiration_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_expiration_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_expiration_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_expiration_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_featured'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_display_format'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_display_format'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_display_format'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_display_format'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_admin_bar_front'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_email_verify_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_email_verify_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_email_verify_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_email_verify_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_email_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_email_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_email_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_email_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'billing_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_display_subcategories'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_display_subcategories'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_display_subcategories'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_display_subcategories'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_email_verify_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_email_verify_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_email_verify_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_email_verify_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'hp_email_verify_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'hp_email_verify_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'hp_email_verify_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'hp_email_verify_address'"
