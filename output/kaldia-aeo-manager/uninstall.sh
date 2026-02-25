#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'kaldia_openai_model'
wp option delete 'kaldia_max_tokens'
wp option delete 'kaldia_temperature'
wp option delete 'kaldia_api_valid'
wp option delete 'kaldia_openai_key'
wp option delete 'kaldia_cipher_seed'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_kaldia_models_%' OR option_name LIKE '_site_transient_kaldia_models_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kaldia_faq'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kaldia_faq'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kaldia_faq'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kaldia_faq'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kaldia_schema_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kaldia_schema_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kaldia_schema_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kaldia_schema_type'"
