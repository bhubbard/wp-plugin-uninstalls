#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cprp_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cprp_exclude_from_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cprp_exclude_from_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cprp_exclude_from_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cprp_exclude_from_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cprp_hide_related_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cprp_hide_related_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cprp_hide_related_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cprp_hide_related_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cprp_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cprp_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cprp_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cprp_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cprp_manually_related'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cprp_manually_related'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cprp_manually_related'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cprp_manually_related'"
