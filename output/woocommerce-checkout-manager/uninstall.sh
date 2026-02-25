#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jetpack_protect_active'
wp option delete 'jetpack_offline_mode'
wp option delete 'wpcom_public_coming_soon'
wp option delete 'wooccm_advanced_custom_css'
wp option delete 'wccs_settings'
wp option delete 'wooccm_checkout_force_shipping_address'
wp option delete 'wooccm_checkout_force_create_account'
wp option delete 'wooccm_checkout_order_notes_label'
wp option delete 'wooccm_checkout_order_notes_placeholder'
wp option delete 'wooccm_checkout_remove_order_notes'
wp option delete 'wooccm_checkout_checkout_form_before_message'
wp option delete 'wooccm_checkout_checkout_form_after_message'
wp option delete 'wooccm_order_upload_files'
wp option delete 'wooccm_order_upload_files_order_status'
wp option delete 'wooccm_order_custom_fields'
wp option delete 'wooccm_order_custom_fields_status'
wp option delete 'wooccm_order_upload_files_title'
wp option delete 'wooccm_additional_position'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'wooccm_order_custom_fields_title'

# Delete Transients
wp transient delete 'jetpack_is_single_user'
wp transient delete 'quadlayers_news_feed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ql_plugin_feedback_%' OR option_name LIKE '_site_transient_ql_plugin_feedback_%'"

