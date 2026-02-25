#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yaymail_version_backup'
wp option delete 'yaymail_default_email_test'
wp option delete 'yaymail_settings'
wp option delete 'yaymail_review'
wp option delete 'yaymail_ghf_tour'
wp option delete 'yaymail_show_multi_select_notice'
wp option delete 'yaymail_viewed_new_elements'
wp option delete 'woocommerce_feature_email_improvements_enabled'
wp option delete 'woocommerce_email_header_image'
wp option delete 'woocommerce_email_base_color'
wp option delete 'woocommerce_email_background_color'
wp option delete 'woocommerce_email_body_background_color'
wp option delete 'woocommerce_email_body_text_color'
wp option delete 'woocommerce_email_footer_text'
wp option delete 'woocommerce_email_footer_text_color'
wp option delete 'yaymail_version'
wp option delete 'rank-math-options-titles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edd_api_request_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_info'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version_info'"
wp option delete 'yaymail_addon_versions'
wp option delete '_yaymail_successful_migrations'
wp option delete 'yaymail_next_recommendation_suggest_addons_notice_time'
wp option delete 'yaymail_next_recommendation_upgrade_notice_time'
wp option delete 'yaymail_next_recommendation_notice_time'
wp option delete 'woocos_custom_order_statuses'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_tax_display_cart'

# Delete Transients
wp transient delete 'update_plugins'

# Clear Cron Jobs
wp cron event delete 'check_license_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pr_shipment_dhl_label_tracking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pr_shipment_dhl_label_tracking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pr_shipment_dhl_label_tracking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pr_shipment_dhl_label_tracking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_email_backgroundColor_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_email_backgroundColor_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_email_backgroundColor_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_email_backgroundColor_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yaymail_email_order_item_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yaymail_email_order_item_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yaymail_email_order_item_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yaymail_email_order_item_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_email_title_billing'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_email_title_billing'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_email_title_billing'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_email_title_billing'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_email_title_shipping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_email_title_shipping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_email_title_shipping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_email_title_shipping'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'status_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'status_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'status_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'status_slug'"
