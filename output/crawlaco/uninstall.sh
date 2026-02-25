#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'crawlaco_size_attr_id'
wp option delete 'crawlaco_color_attr_id'
wp option delete 'crawlaco_brand_attr_id'
wp option delete 'crawlaco_wc_api_keys'
wp option delete 'crawlaco_setup_step'
wp option delete 'crawlaco_website_key'
wp option delete 'crawlaco_setup_complete'
wp option delete 'crawlaco_wp_api_key'
wp option delete 'crawlaco_plugin_activated'
wp option delete 'crawlaco_mapped_attributes'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'provider_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'provider_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'provider_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'provider_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'is_archived'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'is_archived'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'is_archived'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'is_archived'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_focuskw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_yoast_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_yoast_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_yoast_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_yoast_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
