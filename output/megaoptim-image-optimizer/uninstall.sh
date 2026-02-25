#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'megaoptim_instructions_hide'
wp option delete 'megaoptim_registration_email'
wp option delete 'cloudflare_api_email'
wp option delete 'cloudflare_api_key'
wp option delete 'cloudflare_cached_domain_name'
wp option delete 'megaoptim_db_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_megaoptim_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_megaoptim_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_megaoptim_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_megaoptim_data'"
