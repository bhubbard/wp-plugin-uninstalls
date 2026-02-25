#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency_pos'
wp option delete 'woocommerce_attribute_lookup_enabled'
wp option delete 'woocommerce_hide_out_of_stock_items'
wp option delete 'wcapf_v4_migration_notice_status'
wp option delete 'wcapf_v4_review_filters_notice_status'
wp option delete 'wcapf_migrated_filters_form_id'
wp option delete 'wcapf_activation_time'
wp option delete 'woocommerce_tax_display_shop'
wp option delete 'wcapf_run_migrate'
wp option delete 'wcapf_set_default_settings'
wp option delete 'wcapf_update_default_settings'
wp option delete 'wcapf_filter_keys_order'
wp option delete 'wcapf_db_version'

# Delete Transients
wp transient delete 'wcapf_forms_with_locations'
wp transient delete 'wcapf_v4_migration_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcapf_review_notice_for_milestone_achieved_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcapf_review_notice_for_milestone_achieved_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcapf_review_notice_for_milestone_achieved_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcapf_review_notice_for_milestone_achieved_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcapf_review_notice_for_milestone_achieved_dismissed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcapf_review_notice_for_milestone_achieved_dismissed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcapf_review_notice_for_milestone_achieved_dismissed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcapf_review_notice_for_milestone_achieved_dismissed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcapf_review_notice_time_since_hide_permanently'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcapf_review_notice_time_since_hide_permanently'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcapf_review_notice_time_since_hide_permanently'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcapf_review_notice_time_since_hide_permanently'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcapf_review_notice_time_since_dismissed_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcapf_review_notice_time_since_dismissed_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcapf_review_notice_time_since_dismissed_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcapf_review_notice_time_since_dismissed_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcapf_form_updates_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcapf_form_updates_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcapf_form_updates_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcapf_form_updates_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_field_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_field_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_field_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_field_data'"
