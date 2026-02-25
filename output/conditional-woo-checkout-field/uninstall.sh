#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oizuled_conditional_fields_pid'
wp option delete 'oizuled_conditional_fields_required'
wp option delete 'oizuled_conditional_fields_requiredtext'
wp option delete 'oizuled_conditional_fields_title'
wp option delete 'oizuled_conditional_fields_addemail'
wp option delete 'oizuled_conditional_fields_addinvoice'
wp option delete 'oizuled_conditional_fields_type'
wp option delete 'oizuled_conditional_fields_options'
wp option delete 'oizuled_conditional_fields_label'
wp option delete 'oizuled_conditional_fields_placeholder'
wp option delete 'oizuled_conditional_fields_class'
wp option delete 'woocommerce_myaccount_page_id'
wp option delete 'cwcfp-update-notice-dismissed'
wp option delete 'cwcf-review-notice-dismissed'

