#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'um_terms_conditions_agreement_email'
wp option delete 'um_options'
wp option delete 'um_terms_conditions_version'
wp option delete 'um_terms_conditions_last_version_upgrade'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_um_register_use_terms_conditions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_um_register_use_terms_conditions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_um_register_use_terms_conditions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_um_register_use_terms_conditions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_um_register_use_terms_conditions_error_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_um_register_use_terms_conditions_error_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_um_register_use_terms_conditions_error_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_um_register_use_terms_conditions_error_text'"
