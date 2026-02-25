#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gdpr-custom-robots'
wp option delete 'gdpr-use-custom-url'
wp option delete 'gdpr-custom-url'
wp option delete 'gdpr-background-image'
wp option delete 'gdpr_display_mode'
wp option delete 'gdpr_compact_position'
wp option delete 'gdpr_compact_display'
wp option delete 'gdpr_sample_posts'
wp option delete 'orcas-nagger'
wp option delete 'orcas_pro_extension'
wp option delete 'orcas_upgrade_token'
wp option delete 'orcas_installed_single_extension'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'page_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'page_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'page_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'page_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gdpr_accepted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gdpr_accepted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gdpr_accepted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gdpr_accepted'"
