#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ilpramco_salt'
wp option delete 'ilpramco_enable_forms_consent'
wp option delete 'ilpramco_policy_page_id'
wp option delete 'ilpramco_position'
wp option delete 'ilpramco_language'
wp option delete 'ilpramco_primary_color'
wp option delete 'ilpramco_respect_dnt'
wp option delete 'ilpramco_policy_version'
wp option delete 'ilpramco_banner_title'
wp option delete 'ilpramco_banner_text'
wp option delete 'ilpramco_accept_all_text'
wp option delete 'ilpramco_reject_text'
wp option delete 'ilpramco_preferences_text'
wp option delete 'ilpramco_modal_title'
wp option delete 'ilpramco_save_preferences_text'
wp option delete 'ilpramco_categories'
wp option delete 'ilpramco_script_mapping'
wp option delete 'ilpramco_cookies_catalog'
wp option delete 'ilpramco_policy_data'
wp option delete 'ilpramco_custom_content'
wp option delete 'ilpramco_use_custom_content'
wp option delete 'ilpramco_retention_days'
wp option delete 'ilpramco_enable_pattern_wrapper'
wp option delete 'ilpramco_keep_logs_on_uninstall'

# Delete Transients
wp transient delete 'ilpramco_activation_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'il_marketing_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'il_marketing_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'il_marketing_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'il_marketing_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'il_marketing_consent_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'il_marketing_consent_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'il_marketing_consent_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'il_marketing_consent_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'il_marketing_consent_revoked_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'il_marketing_consent_revoked_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'il_marketing_consent_revoked_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'il_marketing_consent_revoked_date'"
