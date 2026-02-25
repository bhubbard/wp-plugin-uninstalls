#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woosponder_user_key'
wp option delete 'woosponder_user_secret'
wp option delete 'woosponder_new_system_user_token'
wp option delete 'woosponder_active_system'
wp option delete 'woosponder_debug_activation_status'
wp option delete 'woosponder_newsletter_activation_status'
wp option delete 'woosponder_newsletter_checkbox_text'
wp option delete 'woosponder_selected_list'
wp option delete 'woosponder_add_product_tag'
wp option delete 'woosponder_add_sku_tag'
wp option delete 'woosponder_add_custom_tags'
wp option delete 'woosponder_custom_fields_mappings'
wp option delete 'woosponder_new_responder_bearer_token'
wp option delete 'woosponder_newsletter_consent_field_id'

