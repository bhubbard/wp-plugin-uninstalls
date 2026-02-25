#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsc_field_name'
wp option delete 'wpsc_field_content'
wp option delete 'wpsc_field_where'
wp option delete 'wpsc_field_posts'
wp option delete 'wpsc_data'
wp option delete 'wpsc_plugin_version'
wp option delete 'wpsc_upgrade_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsc_raw_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsc_raw_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsc_raw_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsc_raw_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsc_from_iso'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsc_from_iso'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsc_from_iso'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsc_from_iso'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsc_to_iso'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsc_to_iso'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsc_to_iso'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsc_to_iso'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsc_from_ts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsc_from_ts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsc_from_ts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsc_from_ts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsc_to_ts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsc_to_ts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsc_to_ts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsc_to_ts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsc_geo_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsc_geo_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsc_geo_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsc_geo_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpsc_countries'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpsc_countries'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpsc_countries'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpsc_countries'"
