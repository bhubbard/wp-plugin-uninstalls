#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpbdp-migrate-18_0-featured-pending'
wp option delete 'wpbdp-show-drip-pointer'
wp option delete 'wpbdp-db-version'
wp option delete 'wpbusdirman_db_version'
wp option delete 'wpbdp_licenses'
wp option delete 'wpbdp-show-tracking-pointer'
wp option delete 'wpbdp_updates'
wp option delete 'wpbdp_settings'
wp option delete 'wpbdp_first_activation'
wp option delete 'wpbdp-manual-upgrade-pending'
wp option delete 'wpbdp-active-theme'
wp option delete 'wpbdp-themes-licenses'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbdp-license-status-%'"
wp option delete 'wpbdp-listing-renewal-message'
wp option delete 'wpbdp-renewal-email-threshold'
wp option delete 'wpbdp-renewal-pending-message'
wp option delete 'wpbdp-send-autorenewal-expiration-notice'
wp option delete 'wpbdp-listing-autorenewal-notice'
wp option delete 'wpbdp-renewal-reminder-threshold'
wp option delete 'wpbdp-renewal-reminder-message'
wp option delete 'wpbdp-listing-autorenewal-message'
wp option delete 'wpbdp-expiration-notices'
wp option delete 'wpbdp-listing-renewal-auto'
wp option delete 'wpbdp-listing-renewal-auto-dontask'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_label_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_type_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_validation_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_association_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_required_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_showinexcerpt_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_hide_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_options_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_postform_field_order_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_settings_fees_label_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_settings_fees_label_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_settings_fees_amount%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_settings_fees_amount_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_settings_fees_increment_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_settings_fees_increment_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_settings_fees_images_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_settings_fees_images_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_settings_fees_categories_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpbusdirman_settings_fees_categories_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%listings-per-page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%notify-admin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%admin-notifications'"
wp option delete 'wpbdp-currency'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%send-email-confirmation'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user-notifications'"
wp option delete 'wpbdp[category_images]'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%show-search-form-in-results'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%search-form-in-results'"
wp option delete 'wpbdp-payment-abandonment-notified'
wp option delete 'rewrite_rules'
wp option delete 'new_admin_email'
wp option delete 'wpbdp-field-short-names'
wp option delete 'wpbdp-authorize-webhook-id'
wp option delete 'wpbdp_stripe_lite_last_verify_attempt'
wp option delete 'wpbdp-site_tracking_hash'
wp option delete 'ftp_credentials'
wp option delete 'wpbdp_licenses_errors'

# Delete Transients
wp transient delete 'wpbdp-official-themes'
wp transient delete 'wpbdp-themes-updates'
wp transient delete 'wpbdp_server_requirements_warning_dismissed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpbdp_export_%' OR option_name LIKE '_site_transient_wpbdp_export_%'"
wp transient delete 'wpbdp_updates'
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpbdp_last_process_%' OR option_name LIKE '_site_transient_wpbdp_last_process_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpbdp_page_ids_%' OR option_name LIKE '_site_transient_wpbdp_page_ids_%'"
wp transient delete 'wpbdp_page_ids_main'
wp transient delete 'wpbdp_page_ids_add-listing'
wp transient delete 'wpbdp_page_ids_manage-listings'
wp transient delete 'wpbdp_page_ids_view-listings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpbdp-expired-licenses-notice-dismissed-%' OR option_name LIKE '_site_transient_wpbdp-expired-licenses-notice-dismissed-%'"
wp transient delete 'wpbdp-license-check-time'

# Clear Cron Jobs
wp cron event delete 'wpbdp_hourly_events'
wp cron event delete 'wpbdp_daily_events'
wp cron event delete 'wpbdp_site_tracking'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%]_selected'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%]_selected'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%]_selected'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%]_selected'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpbdp_notice_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpbdp_notice_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpbdp_notice_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpbdp_notice_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpbdp[images]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpbdp[images]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpbdp[images]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpbdp[images]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpbdp_image_weight'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpbdp_image_weight'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpbdp_image_weight'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpbdp_image_weight'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpbdp_image_caption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpbdp_image_caption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpbdp_image_caption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpbdp_image_caption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpbdp[name]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpbdp[name]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpbdp[name]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpbdp[name]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpbdp_tos_acceptance_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpbdp_tos_acceptance_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpbdp_tos_acceptance_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpbdp_tos_acceptance_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gateway_suscription_cancel_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gateway_suscription_cancel_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gateway_suscription_cancel_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gateway_suscription_cancel_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wpbdp_notice_sent_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wpbdp_notice_sent_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wpbdp_notice_sent_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wpbdp_notice_sent_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cornerstone_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cornerstone_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cornerstone_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cornerstone_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_page_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpbdp_contact_limit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpbdp_contact_limit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpbdp_contact_limit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpbdp_contact_limit'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpbdp_temp_listingfields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpbdp_temp_listingfields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpbdp_temp_listingfields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpbdp_temp_listingfields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpbdp_stripe_payment_failed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpbdp_stripe_payment_failed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpbdp_stripe_payment_failed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpbdp_stripe_payment_failed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpbdp[import_sequence_id]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpbdp[import_sequence_id]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpbdp[import_sequence_id]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpbdp[import_sequence_id]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpbdp_flagged'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpbdp_flagged'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpbdp_flagged'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpbdp_flagged'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpbdp_flagged_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpbdp_flagged_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpbdp_flagged_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpbdp_flagged_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpbdp[thumbnail_id]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpbdp[thumbnail_id]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpbdp[thumbnail_id]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpbdp[thumbnail_id]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpbdp[access_key]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpbdp[access_key]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpbdp[access_key]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpbdp[access_key]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
