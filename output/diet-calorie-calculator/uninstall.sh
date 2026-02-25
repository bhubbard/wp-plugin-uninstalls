#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mwp_dcc_klaviyo_connected'
wp option delete 'mwp_dcc_klaviyo_list'
wp option delete 'mwp_dcc_zapier_connected'
wp option delete 'mwp_dcc_notifications_email'
wp option delete 'mwp_dcc_plugin_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mwp_dcc_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_connected'"
wp option delete 'mwp_dcc_klaviyo_list_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_api_key'"
wp option delete 'mwp_dcc_form_title_text'
wp option delete 'mwp_dcc_form_title_align'
wp option delete 'mwp_dcc_results_view'
wp option delete 'mwp_dcc_units_system'
wp option delete 'mwp_dcc_user_agreement'
wp option delete 'mwp_dcc_privacy_policy_url'
wp option delete 'mwp_dcc_terms_url'
wp option delete 'mwp_dcc_user_agreement_text'
wp option delete 'mwp_dcc_layout_rounded'
wp option delete 'mwp_dcc_activity_list_type'
wp option delete 'mwp_dcc_custom_style'
wp option delete 'mwp_dcc_primary_color'
wp option delete 'mwp_dcc_klaviyo'
wp option delete 'mwp_dcc_klaviyo_api_key'
wp option delete 'mwp_dcc_zapier'
wp option delete 'mwp_dcc_zapier_api_key'

