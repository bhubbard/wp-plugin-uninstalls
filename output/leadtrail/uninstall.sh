#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'paypal_mode'
wp option delete 'stripe_mode'
wp option delete 'lead_currency'
wp option delete 'leadtrail_license_key'
wp option delete 'leadtrail_license_status'
wp option delete 'leadtrail_license_expiry_date'
wp option delete 'lead_publish'
wp option delete 'leadtrail_custom_fields'
wp option delete 'leadtrail_cfield_settings'
wp option delete 'leadtrail_cfield_settings_hide'
wp option delete 'paypal_api_username'
wp option delete 'paypal_api_password'
wp option delete 'paypal_api_signature'
wp option delete 'stripe_publishable_key'
wp option delete 'stripe_secret_key'
wp option delete 'buy_lead_page'
wp option delete '_leadbuyerdashboard_page'
wp option delete '_leaddisplayall_page'
wp option delete 'multiple_lead_show'
wp option delete 'max_lead_purchase'
wp option delete '_leaddetail_page'
wp option delete 'admin_lead_field_display'
wp option delete 'lead_field_display'
wp option delete 'cat_lead_field_display'
wp option delete 'group_lead_field_display'
wp option delete 'quality_lead_field_display'
wp option delete 'admin_lead_approval'
wp option delete 'lead_purchase_count'
wp option delete 'leadtrail_error'
wp option delete 'leadtrail_success'
wp option delete 'leadtrail_form_names'
wp option delete 'leadtrail_elementor'
wp option delete 'admin_note'
wp option delete 'GHAXlt_custom_roles_version'
wp option delete 'stipe_mode'
wp option delete 'buyer_note'
wp option delete 'skyrocket_product_license_key'
wp option delete 'skyrocket_product_license_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leadtrail_notifications'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leadtrail_notifications'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leadtrail_notifications'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leadtrail_notifications'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leadcart'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leadcart'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leadcart'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leadcart'"
