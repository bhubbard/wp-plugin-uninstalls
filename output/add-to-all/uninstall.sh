#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ald_ata_settings'
wp option delete 'ata_settings'

# Delete Transients
wp transient delete 'ata_first_post_year'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ata_snippet_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ata_snippet_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ata_snippet_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ata_snippet_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ata_include_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ata_include_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ata_include_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ata_include_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ata_include_relation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ata_include_relation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ata_include_relation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ata_include_relation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ata_include_on_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ata_include_on_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ata_include_on_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ata_include_on_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ata_include_on_posttypes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ata_include_on_posttypes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ata_include_on_posttypes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ata_include_on_posttypes'"
