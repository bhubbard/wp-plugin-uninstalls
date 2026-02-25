#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pronamic_domain_mapping_ga_ua'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pronamic_domain_mapping_ga_ua'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pronamic_domain_mapping_ga_ua'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pronamic_domain_mapping_ga_ua'"
