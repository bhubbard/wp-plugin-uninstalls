#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edd_ifso_geo_license_key'
wp option delete 'edd_ifso_geo_license_status'
wp option delete 'edd_ifso_geo_license_expires'
wp option delete 'edd_ifso_license_key'
wp option delete 'edd_ifso_license_status'
wp option delete 'edd_ifso_license_expires'
wp option delete 'edd_ifso_license_item_id'
wp option delete 'ifso_db_version'
wp option delete 'ifso_wp_version'
wp option delete 'edd_ifso_geo_license_item_id'
wp option delete 'edd_ifso_user_deactivated_license'
wp option delete 'edd_ifso_geo_license_item_name'
wp option delete 'edd_ifso_had_geo_license'
wp option delete 'edd_ifso_user_deactivated_geo_license'
wp option delete 'edd_ifso_license_item_name'
wp option delete 'edd_ifso_had_license'
wp option delete 'ifso_groups_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifso_trigger_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifso_trigger_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifso_trigger_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifso_trigger_rules'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifso_trigger_default_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifso_trigger_default_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifso_trigger_default_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifso_trigger_default_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifso_trigger_default'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifso_trigger_default'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifso_trigger_default'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifso_trigger_default'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ifso_trigger_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ifso_trigger_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ifso_trigger_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ifso_trigger_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpb_shortcodes_custom_css'"
