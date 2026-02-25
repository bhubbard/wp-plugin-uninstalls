#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'notifywise_recaptcha_credentials'
wp option delete 'notifywise_brevo'
wp option delete 'notifywise_external_integration'
wp option delete 'notifywise_mail_custom_content'
wp option delete 'notifywise_mailer_type'
wp option delete 'notifywise_smtp'
wp option delete 'notifywise_sendgrid'
wp option delete 'notifywise_button_normal_design'
wp option delete 'notifywise_button_hover_design'
wp option delete 'notifywise_brevo_list_ids'
wp option delete 'notifywise_brevo_status'
wp option delete 'notifywise_gdpr_content'
wp option delete 'notifywise_custom_fields_table_inserted_default'
wp option delete 'notifywise_brevo_response'
wp option delete 'notifywise_existing_user'
wp option delete 'notifywise_sendgrid_status'
wp option delete 'notifywise_updated_stock_product_id'
wp option delete 'notifywise_form_general_settings'
wp option delete 'notifywise_form_content_settings'
wp option delete 'woocommerce_email_from_address'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_state'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'notifywise_external_integration_status'
wp option delete 'notifywise_shortcode_list'
wp option delete 'notifywise_brevo_submitted_data'
wp option delete 'notifywise_button_general_settings'

# Delete Transients
wp transient delete 'notifywise_doing_upgrade'

