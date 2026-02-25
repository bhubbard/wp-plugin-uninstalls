#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'parsely_data_schema_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_traffic_boost_original_link_attributes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_traffic_boost_original_link_attributes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_traffic_boost_original_link_attributes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_traffic_boost_original_link_attributes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_traffic_boost_source_post_revision'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_traffic_boost_source_post_revision'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_traffic_boost_source_post_revision'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_traffic_boost_source_post_revision'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_traffic_boost_source_original_post_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_traffic_boost_source_original_post_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_traffic_boost_source_original_post_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_traffic_boost_source_original_post_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_traffic_boost_source_original_paragraph'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_traffic_boost_source_original_paragraph'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_traffic_boost_source_original_paragraph'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_traffic_boost_source_original_paragraph'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'parsely_metadata_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'parsely_metadata_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'parsely_metadata_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'parsely_metadata_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_parsely_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_parsely_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_parsely_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_parsely_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smart_link_applied'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smart_link_applied'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smart_link_applied'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smart_link_applied'"
