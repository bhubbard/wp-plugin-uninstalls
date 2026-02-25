#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_filesmash_options'
wp option delete 'filesmash_activation_redirect'
wp option delete '_filesmash_api_status'
wp option delete '_filesmash_first_opt_images'
wp option delete 'filesmash_db_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp option delete 'cloudflare_api_email'
wp option delete 'cloudflare_api_key'
wp option delete 'cloudflare_cached_domain_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_filesmash_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_filesmash_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_filesmash_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_filesmash_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_filesmash_ignore_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_filesmash_ignore_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_filesmash_ignore_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_filesmash_ignore_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cheetaho_ignore_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cheetaho_ignore_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cheetaho_ignore_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cheetaho_ignore_notices'"
