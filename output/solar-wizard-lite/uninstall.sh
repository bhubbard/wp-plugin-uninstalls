#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sw_language'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_en'"
wp option delete 'sw_incentives_repeater_value_type'
wp option delete 'sw_incentives_repeater_value'
wp option delete 'sw_incentives_repeater_applied'
wp option delete 'sw_wizard_logo'
wp option delete 'sw_wizard_title'
wp option delete 'sw_google_autocomplete_address'
wp option delete 'sw_primary_color'
wp option delete 'sw_secondary_color'
wp option delete 'sw_custom_css'
wp option delete 'sw_currency_symbol'
wp option delete 'sw_email_enable_admin_notification'
wp option delete 'sw_email_enable_user_notification'
wp option delete 'sw_company_name'
wp option delete 'sw_panel_image'
wp option delete 'sw_db_version'
wp option delete 'sw_email_send_mid_wizard'
wp option delete 'sw_email_at_wizard_completion'
wp option delete 'sw_system_size_fixed_pricing_matrix'
wp option delete 'sw_price_per_watt_panel_low_cash'
wp option delete 'sw_price_per_watt_panel_high_cash'
wp option delete 'sw_lowest_per_of_saving'
wp option delete 'sw_higest_per_of_saving'
wp option delete 'sw_lowest_per_of_saving_lease'
wp option delete 'sw_higest_per_of_saving_lease'
wp option delete 'sw_environmental_derate_factor'
wp option delete 'sw_sunzone_hours'
wp option delete 'sw_sunzone_values'
wp option delete 'sw_electricity_kwh_cost'
wp option delete 'sw_panel_watt'
wp option delete 'sw_utility_increase_rate'
wp option delete 'sw_panel_manufacturer'
wp option delete 'sw_show_purchase_lease'
wp option delete 'sw_price_per_watt_panel_low_finance'
wp option delete 'sw_price_per_watt_panel_high_finance'
wp option delete 'sw_price_per_watt_panel_low_lease'
wp option delete 'sw_price_per_watt_panel_high_lease'
wp option delete 'sw_loan_rate'
wp option delete 'sw_loan_term'
wp option delete 'sw_credit_score'
wp option delete 'sw_lease_rate'
wp option delete 'sw_lease_term'
wp option delete 'sw_lease_credit_score'
wp option delete 'sw_email_admin_email'
wp option delete 'sw_email_enable_office_hours_setup'
wp option delete 'sw_disable_battery_option'
wp option delete 'sw_incentives_repeater_name'
wp option delete 'sw_email_from_name'
wp option delete 'sw_email_from_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_motivate_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_motivate_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_motivate_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_motivate_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_more_about'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_more_about'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_more_about'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_more_about'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_getting_best'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_getting_best'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_getting_best'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_getting_best'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_confirmaddress'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_confirmaddress'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_confirmaddress'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_confirmaddress'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_monthly_bill'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_monthly_bill'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_monthly_bill'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_monthly_bill'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_describe_you'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_describe_you'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_describe_you'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_describe_you'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_system_purchase_plan'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_system_purchase_plan'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_system_purchase_plan'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_system_purchase_plan'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_military'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_military'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_military'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_military'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nurse'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nurse'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nurse'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nurse'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_learn_battery_storage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_learn_battery_storage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_learn_battery_storage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_learn_battery_storage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_communication_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_communication_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_communication_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_communication_method'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_communication_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_communication_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_communication_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_communication_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_battery_storage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_battery_storage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_battery_storage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_battery_storage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form_used'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form_used'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form_used'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form_used'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_opt_in'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_opt_in'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_opt_in'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_opt_in'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sw_currency_symbol'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sw_currency_symbol'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sw_currency_symbol'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sw_currency_symbol'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_panel_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_panel_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_panel_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_panel_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_system_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_system_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_system_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_system_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_potential_savings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_potential_savings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_potential_savings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_potential_savings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_quote_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_quote_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_quote_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_quote_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_firstname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_firstname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_firstname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_firstname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lastname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lastname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lastname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lastname'"
