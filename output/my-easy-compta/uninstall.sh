#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecwp_db_version'
wp option delete 'ecwp_encryption_key'
wp option delete 'ecwp_client_license_key'
wp option delete 'ecwp_client_license_data'

# Delete Transients
wp transient delete 'ecwp_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'my_easy_compta_banner_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'my_easy_compta_banner_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'my_easy_compta_banner_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'my_easy_compta_banner_dismissed'"
