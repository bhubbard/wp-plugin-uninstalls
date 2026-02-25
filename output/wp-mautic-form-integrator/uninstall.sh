#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'fs_contact_form%'"
wp option delete 'haw_mautic_drop_data'
wp option delete 'haw_mautic_base_url'
wp option delete 'haw_mautic_auth_type'
wp option delete 'haw_mautic_public_key'
wp option delete 'haw_mautic_secret_key'
wp option delete 'haw_mautic_access_token_data'
wp option delete 'haw_mautic_integration_do_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
