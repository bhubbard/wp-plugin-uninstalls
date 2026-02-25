#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wemail_site_connection_notice'
wp option delete 'wemail_api_key'
wp option delete 'wemail_review_notice'
wp option delete 'wemail_installed_time'
wp option delete 'wemail_sent_campaign_count'
wp option delete 'wemail_response_for_review_notice'
wp option delete 'wemail_site_slug'
wp option delete 'wemail_accessible_roles'
wp option delete 'wemail_form_integration_caldera_forms'
wp option delete 'wemail_form_integration_contact_form_7'
wp option delete 'wemail_form_integration_elementor_forms'
wp option delete 'wemail_form_integration_everest_forms'
wp option delete 'wemail_form_integration_fluent_forms'
wp option delete 'wemail_form_integration_formidable_forms'
wp option delete 'wemail_form_integration_forminator_forms'
wp option delete 'wemail_form_integration_gravity_forms'
wp option delete 'wemail_form_integration_happy_forms'
wp option delete 'ninja_forms_version'
wp option delete 'wemail_form_integration_ninja_forms'
wp option delete 'wemail_form_integration_popup_builder'
wp option delete 'wemail_form_integration_weforms'
wp option delete 'wemail_form_integration_wpforms'
wp option delete 'wemail_transactional_emails'
wp option delete 'wemail_affiliatewp_enabled'
wp option delete 'wemail_edd_integrated'
wp option delete 'wemail_is_edd_synced'
wp option delete 'wemail_woocommerce_integrated'
wp option delete 'wemail_is_woocommerce_synced'
wp option delete 'wemail_sync_subscriber_erp_contacts'
wp option delete 'wemail_sync_subscriber_wp'
wp option delete 'wemail_general'
wp option delete 'wemail_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp transient delete 'wemail_activation_redirect'
wp transient delete 'wemail_sent_campaign_count'
wp transient delete 'wemail_validate_me_key'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wemail_disable_user_access'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wemail_disable_user_access'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wemail_disable_user_access'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wemail_disable_user_access'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wemail_api_key'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wemail_api_key'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wemail_api_key'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wemail_api_key'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'forminator_form_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'forminator_form_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'forminator_form_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'forminator_form_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wemail_user_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wemail_user_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wemail_user_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wemail_user_data'"
