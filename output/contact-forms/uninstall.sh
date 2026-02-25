#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'accua_form_api_keys'
wp option delete 'accua_forms_avail_fields'
wp option delete 'accua_forms_saved_forms'
wp option delete 'accua_forms_trash_forms'
wp option delete 'accua_forms_default_form_data'
wp option delete 'accua_forms_default_file_field_data'
wp option delete 'accua_forms_lastid'
wp option delete 'accua_forms_default_captcha_field_data'
wp option delete 'accua_forms_default_analytics_data'
wp option delete 'accua_forms_anonymize_ip_data'
wp option delete 'accua_forms_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_accuaformsub_%' OR option_name LIKE '_site_transient_accuaformsub_%'"

