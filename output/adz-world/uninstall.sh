#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'template_%'"
wp option delete 'adz_ad_options'
wp option delete 'adz_publisher_options'
wp option delete 'next_adz_pool'
wp option delete 'adz_session_option'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'adz_rotation_shortcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'adz_rotation_shortcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'adz_rotation_shortcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'adz_rotation_shortcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'network_ad_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'network_ad_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'network_ad_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'network_ad_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affiliation_network_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affiliation_network_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affiliation_network_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affiliation_network_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affiliation_network_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affiliation_network_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affiliation_network_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affiliation_network_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'affiliation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'affiliation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'affiliation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'affiliation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'network_ad_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'network_ad_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'network_ad_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'network_ad_error'"
