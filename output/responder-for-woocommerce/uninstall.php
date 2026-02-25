<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woosponder_user_key');
delete_site_option('woosponder_user_key');
delete_option('woosponder_user_secret');
delete_site_option('woosponder_user_secret');
delete_option('woosponder_new_system_user_token');
delete_site_option('woosponder_new_system_user_token');
delete_option('woosponder_active_system');
delete_site_option('woosponder_active_system');
delete_option('woosponder_debug_activation_status');
delete_site_option('woosponder_debug_activation_status');
delete_option('woosponder_newsletter_activation_status');
delete_site_option('woosponder_newsletter_activation_status');
delete_option('woosponder_newsletter_checkbox_text');
delete_site_option('woosponder_newsletter_checkbox_text');
delete_option('woosponder_selected_list');
delete_site_option('woosponder_selected_list');
delete_option('woosponder_add_product_tag');
delete_site_option('woosponder_add_product_tag');
delete_option('woosponder_add_sku_tag');
delete_site_option('woosponder_add_sku_tag');
delete_option('woosponder_add_custom_tags');
delete_site_option('woosponder_add_custom_tags');
delete_option('woosponder_custom_fields_mappings');
delete_site_option('woosponder_custom_fields_mappings');
delete_option('woosponder_new_responder_bearer_token');
delete_site_option('woosponder_new_responder_bearer_token');
delete_option('woosponder_newsletter_consent_field_id');
delete_site_option('woosponder_newsletter_consent_field_id');

