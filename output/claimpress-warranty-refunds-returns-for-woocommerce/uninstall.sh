#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'claimpress_just_activated'
wp option delete 'claimpress_db_version'
wp option delete 'claimpress_notification_emails'
wp option delete 'claimpress_enable_guest_claims'
wp option delete 'claimpress_guest_claim_page_id'
wp option delete 'claimpress_display_hook'
wp option delete 'claimpress_warranty_heading_text'
wp option delete 'claimpress_enable_warranty_certificates'
wp option delete 'claimpress_enable_proof_attachments'
wp option delete 'claimpress_insights_consent'
wp option delete 'claimpress_install_event_sent'
wp option delete 'woocommerce_default_country'
wp option delete 'claimpress_version_tracked'
wp option delete 'claimpress_activation_timestamp'
wp option delete 'claimpress_migration_2_0_1_claims_updated'

# Delete Transients
wp transient delete 'claimpress_pending_claims_count'
wp transient delete 'claimpress_insights_notice_dismissed'
wp transient delete 'claimpress_show_tracking_notice'
wp transient delete 'claimpress_shop_notice_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimpress_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimpress_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimpress_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimpress_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimpress_exchange_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimpress_exchange_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimpress_exchange_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimpress_exchange_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimpress_return_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimpress_return_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimpress_return_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimpress_return_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimpress_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimpress_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimpress_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimpress_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimpress_exchange_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimpress_exchange_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimpress_exchange_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimpress_exchange_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimpress_exchange_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimpress_exchange_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimpress_exchange_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimpress_exchange_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimpress_return_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimpress_return_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimpress_return_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimpress_return_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimpress_return_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimpress_return_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimpress_return_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimpress_return_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimpress_included_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimpress_included_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimpress_included_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimpress_included_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimpress_included_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimpress_included_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimpress_included_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimpress_included_period'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimpress_paid_tiers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimpress_paid_tiers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimpress_paid_tiers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimpress_paid_tiers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_order_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claim_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claim_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claim_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claim_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claim_reason'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claim_reason'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claim_reason'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claim_reason'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_issue_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_issue_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_issue_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_issue_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimpress_paid_tier_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimpress_paid_tier_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimpress_paid_tier_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimpress_paid_tier_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimpress_no_warranty_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimpress_no_warranty_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimpress_no_warranty_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimpress_no_warranty_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimpress_warranty_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimpress_warranty_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimpress_warranty_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimpress_warranty_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimpress_warranty_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimpress_warranty_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimpress_warranty_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimpress_warranty_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_claimpress_warranty_period'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_claimpress_warranty_period'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_claimpress_warranty_period'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_claimpress_warranty_period'"
