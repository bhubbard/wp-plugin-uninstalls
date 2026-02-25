#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sce_mailchimp_lists'
wp option delete 'wordpress_api_key'
wp option delete 'sce_options'
wp option delete 'ajax-edit-comments_security_key_count'
wp option delete 'comment-edit-lite-activate'

# Delete Transients
wp transient delete 'sce_security_keys'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_sce_timer_%' OR option_name LIKE '_site_transient_sce_timer_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sce'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sce'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sce'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sce'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sce_mailchimp_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sce_mailchimp_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sce_mailchimp_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sce_mailchimp_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
