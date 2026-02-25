-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wemail_site_connection_notice', 'wemail_api_key', 'wemail_review_notice', 'wemail_installed_time', 'wemail_sent_campaign_count', 'wemail_response_for_review_notice', 'wemail_site_slug', 'wemail_accessible_roles', 'wemail_form_integration_caldera_forms', 'wemail_form_integration_contact_form_7', 'wemail_form_integration_elementor_forms', 'wemail_form_integration_everest_forms', 'wemail_form_integration_fluent_forms', 'wemail_form_integration_formidable_forms', 'wemail_form_integration_forminator_forms', 'wemail_form_integration_gravity_forms', 'wemail_form_integration_happy_forms', 'ninja_forms_version', 'wemail_form_integration_ninja_forms', 'wemail_form_integration_popup_builder', 'wemail_form_integration_weforms', 'wemail_form_integration_wpforms', 'wemail_transactional_emails', 'wemail_affiliatewp_enabled', 'wemail_edd_integrated', 'wemail_is_edd_synced', 'wemail_woocommerce_integrated', 'wemail_is_woocommerce_synced', 'wemail_sync_subscriber_erp_contacts', 'wemail_sync_subscriber_wp', 'wemail_general', 'wemail_version', 'wemail_activation_redirect', 'wemail_sent_campaign_count', 'wemail_validate_me_key');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wemail_disable_user_access', 'wemail_api_key', '_elementor_data', 'forminator_form_meta', '_wp_attachment_image_alt', 'wemail_user_data');
DELETE FROM wp_usermeta WHERE meta_key IN ('wemail_disable_user_access', 'wemail_api_key', '_elementor_data', 'forminator_form_meta', '_wp_attachment_image_alt', 'wemail_user_data');
DELETE FROM wp_termmeta WHERE meta_key IN ('wemail_disable_user_access', 'wemail_api_key', '_elementor_data', 'forminator_form_meta', '_wp_attachment_image_alt', 'wemail_user_data');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wemail_disable_user_access', 'wemail_api_key', '_elementor_data', 'forminator_form_meta', '_wp_attachment_image_alt', 'wemail_user_data');

