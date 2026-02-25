#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_kseo_general_meta_keywords'
wp option delete '_kseo_db_setup_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_amp_ratting_total_%' OR option_name LIKE '_site_transient_amp_ratting_total_%'"
wp transient delete '_kseo_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kseo_post_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kseo_post_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kseo_post_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kseo_post_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_kseo_seen_about_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_kseo_seen_about_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_kseo_seen_about_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_kseo_seen_about_page'"
