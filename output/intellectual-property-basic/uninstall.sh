#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'tax_meta_%'"
wp option delete 'iproperty_db_version'
wp option delete 'property-amenity_children'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iproperty_agent_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iproperty_agent_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iproperty_agent_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iproperty_agent_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'property_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'property_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'property_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'property_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'start_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'iproperty_feature_agent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'iproperty_feature_agent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'iproperty_feature_agent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'iproperty_feature_agent'"
