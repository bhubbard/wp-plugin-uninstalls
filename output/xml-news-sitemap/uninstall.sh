#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gns_xml_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gns_xml_include'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gns_xml_include'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gns_xml_include'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gns_xml_include'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gns_xml_pubaccess'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gns_xml_pubaccess'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gns_xml_pubaccess'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gns_xml_pubaccess'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gns_xml_genres'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gns_xml_genres'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gns_xml_genres'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gns_xml_genres'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gns_xml_publanguage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gns_xml_publanguage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gns_xml_publanguage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gns_xml_publanguage'"
