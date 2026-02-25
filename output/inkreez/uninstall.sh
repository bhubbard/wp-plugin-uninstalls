#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'inkreez_key'
wp option delete 'inkreez_sequences'
wp option delete 'inkreez_gtm_code_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'inkreez_cf7_%'"
wp option delete 'inkreez_gtm_code_head'
wp option delete 'inkreez_gtm_code_body'
wp option delete 'inkreez_role'

# Delete Transients
wp transient delete 'inkreez_custom_plugin_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_customer_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_customer_user'"
