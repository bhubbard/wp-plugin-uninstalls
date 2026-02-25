#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mcc_automated_greeting'
wp option delete 'mcc_automated_first_heading'
wp option delete 'mcc_automated_form_instructions'
wp option delete 'mcc_automated_second_heading'
wp option delete 'mcc_automated_total_cost_label'
wp option delete 'mcc_automated_total_phone_count_label'
wp option delete 'mcc_automated_savings_label'
wp option delete 'mcc_automated_giga_usage_label'
wp option delete 'mcc_automated_customer_name'
wp option delete 'mcc_automated_customer_mail'
wp option delete 'mcc_automated_notif_mail'
wp option delete 'mcc_automated_form_notif_template'
wp option delete 'mcc_automated_savings_formula_percent'
wp option delete 'mcc_automated_form2_next_step_msg'
wp option delete 'mcc_automated_db_version'

