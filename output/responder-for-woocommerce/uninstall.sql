-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woosponder_user_key', 'woosponder_user_secret', 'woosponder_new_system_user_token', 'woosponder_active_system', 'woosponder_debug_activation_status', 'woosponder_newsletter_activation_status', 'woosponder_newsletter_checkbox_text', 'woosponder_selected_list', 'woosponder_add_product_tag', 'woosponder_add_sku_tag', 'woosponder_add_custom_tags', 'woosponder_custom_fields_mappings', 'woosponder_new_responder_bearer_token', 'woosponder_newsletter_consent_field_id');

