-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('piotnetforms-stripe-publishable-key', 'piotnetforms-recaptcha-site-key', 'piotnetforms-recaptcha-secret-key', 'piotnetforms-activated', 'piotnetforms_do_flush', 'piotnetforms-google-sheets-client-id', 'piotnetforms-google-sheets-client-secret', 'piotnetforms-google-maps-api-key', 'piotnetforms-stripe-secret-key', 'piotnetforms-mailchimp-api-key', 'piotnetforms-mailerlite-api-key', 'piotnetforms-activecampaign-api-key', 'piotnetforms-activecampaign-api-url', 'piotnetforms-zoho-domain', 'piotnetforms-zoho-client-id', 'piotnetforms-zoho-client-secret', 'piotnetforms-zoho-refresh-token', 'piotnetforms-zoho-token', 'piotnetforms-paypal-client-id', 'piotnetforms-username', 'piotnetforms-password', 'piotnetforms_do_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_piotnetforms_data', '_piotnet-revision-version', '_piotnetforms_shortcode_in_post', '_submit_post_id', '_submit_button_id', '_piotnet-widget-settings');
DELETE FROM wp_usermeta WHERE meta_key IN ('_piotnetforms_data', '_piotnet-revision-version', '_piotnetforms_shortcode_in_post', '_submit_post_id', '_submit_button_id', '_piotnet-widget-settings');
DELETE FROM wp_termmeta WHERE meta_key IN ('_piotnetforms_data', '_piotnet-revision-version', '_piotnetforms_shortcode_in_post', '_submit_post_id', '_submit_button_id', '_piotnet-widget-settings');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_piotnetforms_data', '_piotnet-revision-version', '_piotnetforms_shortcode_in_post', '_submit_post_id', '_submit_button_id', '_piotnet-widget-settings');

