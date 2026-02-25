#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'auto_form_builder_remove_data_on_uninstall'
wp option delete 'auto_form_builder_show_in_admin_bar'
wp option delete 'auto_form_builder_data_retention_period'
wp option delete 'auto_form_builder_enable_ip_anonymization'
wp option delete 'auto_form_builder_gdpr_compliance_mode'
wp option delete 'auto_form_builder_auto_delete_old_data'
wp option delete 'auto_form_builder_privacy_policy_link'
wp option delete 'auto_form_builder_roadmap_consent'
wp option delete 'auto_form_builder_google_sheets_settings'
wp option delete 'auto_form_builder_admin_email'
wp option delete 'auto_form_builder_timezone'
wp option delete 'auto_form_builder_debug_logs'
wp option delete 'auto_form_builder_from_name'
wp option delete 'auto_form_builder_from_email'
wp option delete 'auto_form_builder_smtp_host'
wp option delete 'auto_form_builder_smtp_port'
wp option delete 'auto_form_builder_smtp_username'
wp option delete 'auto_form_builder_smtp_password'
wp option delete 'auto_form_builder_smtp_encryption'
wp option delete 'auto_form_builder_address_storage_version'

# Delete Transients
wp transient delete 'auto_form_builder_updated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auto_form_builder_preferences'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auto_form_builder_preferences'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auto_form_builder_preferences'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auto_form_builder_preferences'"
