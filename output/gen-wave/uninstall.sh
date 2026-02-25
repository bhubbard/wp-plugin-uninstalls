#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'genwave_encryption_key'
wp option delete 'genwave_tables_installed'
wp option delete 'genwave_installation_date'
wp option delete 'genwave_admin_option'
wp option delete 'genwave_token_balance'
wp option delete 'genwave_rest_api_flushed_v2'
wp option delete 'genwave_mybusiness_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'genwave_%'"
wp option delete 'genwave_litellm_api_key'
wp option delete 'genwave_api_base_url'
wp option delete 'genwave_api_key'
wp option delete 'genwave_default_model'
wp option delete 'genwave_default_provider'
wp option delete 'genwave_rate_limit'
wp option delete 'genwave_license_key'
wp option delete 'genwave_db_version'

# Delete Transients
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete 'update_core'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_short_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_short_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_short_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_short_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_generated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_generated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_generated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_generated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_source_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_source_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_source_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_source_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ai_generated_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ai_generated_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ai_generated_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ai_generated_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_genwave_generation_method'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_genwave_generation_method'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_genwave_generation_method'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_genwave_generation_method'"
