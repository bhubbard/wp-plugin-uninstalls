#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_edi_filename'
wp option delete 'edi'
wp option delete '_edi_mode'
wp option delete '_edi_type'
wp option delete '_edi_last_xml_entry'
wp option delete '_edi_1c_category_map'
wp option delete '_edi_1c_attribute_map'
wp option delete '_edi_1c_image_map'

# Delete Transients
wp transient delete 'edi-interrupt'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edi_guid_match_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edi_guid_match_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edi_guid_match_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edi_guid_match_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edi_guid_match_synced_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edi_guid_match_synced_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edi_guid_match_synced_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edi_guid_match_synced_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
