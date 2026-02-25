#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zcf_crmformswpbuilder_settings'
wp option delete 'zcrm_integ_domain_name'
wp option delete 'crm_users'
wp option delete 'zcf_crm_oldversion_shortcodes'
wp option delete 'zcf_captcha_settings'
wp option delete 'zcf_crmfields_shortcodes'
wp option delete 'zcrm_integ_client_id'
wp option delete 'zcrm_integ_client_secret'
wp option delete 'zcrm_integ_authorization_uri'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'Thirdparty_%'"
wp option delete 'zcf_user_capture_settings'
wp option delete 'zcf_usersync_assignedto_settings'
wp option delete 'ZCFFormBuilderPluginActivated'
wp option delete 'custom_plugin'
wp option delete 'zohocrmbasemodule'
wp option delete 'Sync_value_on_off'
wp option delete 'usersync_rr_value'
wp option delete 'zcf_contactform7plugin_settings'
wp option delete 'ZcfLeadContactformPLugin'
wp option delete 'crmforms_crmformswpbuilder_fields_shortcodes'
wp option delete 'ZcfFromBuilderFirstTimeWarning'
wp option delete 'zcf_lead_post_field_settings'
wp option delete 'zcf_lead_widget_field_settings'
wp option delete 'zcf_lead_fields-tmp'
wp option delete 'zcf_contact_fields-tmp'
wp option delete 'zcf-zohocrm-form-builder'

