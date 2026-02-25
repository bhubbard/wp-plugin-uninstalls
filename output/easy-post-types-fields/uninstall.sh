#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_easy-post-types-fields_setup_wizard_seen'
wp option delete 'ept_review_notice_triggered'
wp option delete 'ept_review_notice_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ept_taxonomies'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ept_taxonomies'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ept_taxonomies'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ept_taxonomies'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ept_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ept_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ept_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ept_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ept_plural_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ept_plural_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ept_plural_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ept_plural_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ept_supports'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ept_supports'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ept_supports'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ept_supports'"
