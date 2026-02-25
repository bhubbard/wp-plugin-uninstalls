#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'piotnetforms-stripe-publishable-key'
wp option delete 'piotnetforms-recaptcha-site-key'
wp option delete 'piotnetforms-recaptcha-secret-key'
wp option delete 'piotnetforms-activated'
wp option delete 'piotnetforms_do_flush'
wp option delete 'piotnetforms-google-sheets-client-id'
wp option delete 'piotnetforms-google-sheets-client-secret'
wp option delete 'piotnetforms-google-maps-api-key'
wp option delete 'piotnetforms-stripe-secret-key'
wp option delete 'piotnetforms-mailchimp-api-key'
wp option delete 'piotnetforms-mailerlite-api-key'
wp option delete 'piotnetforms-activecampaign-api-key'
wp option delete 'piotnetforms-activecampaign-api-url'
wp option delete 'piotnetforms-zoho-domain'
wp option delete 'piotnetforms-zoho-client-id'
wp option delete 'piotnetforms-zoho-client-secret'
wp option delete 'piotnetforms-zoho-refresh-token'
wp option delete 'piotnetforms-zoho-token'
wp option delete 'piotnetforms-paypal-client-id'
wp option delete 'piotnetforms-username'
wp option delete 'piotnetforms-password'
wp option delete 'piotnetforms_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_piotnetforms_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_piotnetforms_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_piotnetforms_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_piotnetforms_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_piotnet-revision-version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_piotnet-revision-version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_piotnet-revision-version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_piotnet-revision-version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_piotnetforms_shortcode_in_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_piotnetforms_shortcode_in_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_piotnetforms_shortcode_in_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_piotnetforms_shortcode_in_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_submit_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_submit_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_submit_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_submit_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_submit_button_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_submit_button_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_submit_button_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_submit_button_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_piotnet-widget-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_piotnet-widget-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_piotnet-widget-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_piotnet-widget-settings'"
