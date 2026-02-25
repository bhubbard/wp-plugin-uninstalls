#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nooz_options'
wp option delete 'nooz_default_pages'
wp option delete 'mdnooz_default_pages'
wp option delete 'mdnooz_shortcode_date_format'
wp option delete 'mdnooz_flush_rewrite_rules'
wp option delete 'mdnooz_shortcode_theme'
wp option delete 'mdnooz_plugin_version'
wp option delete 'mdnooz_plugin_name'
wp option delete 'mdnooz_shortcode_count'
wp option delete 'mdnooz_shortcode_use_excerpt'
wp option delete 'mdnooz_shortcode_use_more_link'
wp option delete 'mdnooz_shortcode_more_link'
wp option delete 'mdnooz_shortcode_use_pagination'
wp option delete 'mdnooz_shortcode_previous_link'
wp option delete 'mdnooz_shortcode_next_link'
wp option delete 'mdnooz_release_slug'
wp option delete 'mdnooz_coverage_slug'
wp option delete 'mdnooz_managed_post_types'
wp option delete 'mdnooz_shortcode_display'
wp option delete 'mdnooz_shortcode_use_archive_link'
wp option delete 'mdnooz_shortcode_item_element_order'
wp option delete 'mdnooz_hide_empty_categories'
wp option delete 'mdnooz_delete_settings_data'
wp option delete 'mdnooz_plugin_previous_version'
wp option delete 'mdnooz_coverage_default_image_url'
wp option delete 'mdnooz_release_default_image_url'
wp option delete 'mdnooz_release_location'
wp option delete 'mdnooz_release_boilerplate'
wp option delete 'mdnooz_release_contact'
wp option delete 'mdnooz_release_ending'
wp option delete 'mdnooz_release_dateline_format'
wp option delete 'mdnooz_release_date_format'
wp option delete 'mdnooz_flush_rewrite_rules_nonce'
wp option delete 'mdnooz_upgrade_default_image'
wp option delete 'mdnooz_release_default_image'
wp option delete 'mdnooz_coverage_default_image'
wp option delete 'mdnooz_upgrade_post_priority'
wp option delete 'mdnooz_upgrade_post_version'
wp option delete 'mdnooz_upgrade_release_subheadline'
wp option delete 'mdnooz_upgrade_coverage_post_meta'
wp option delete 'mdnooz_upgrade_coverage_link'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mdnooz_post_action'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mdnooz_post_action'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mdnooz_post_action'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mdnooz_post_action'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mdnooz_link_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mdnooz_link_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mdnooz_link_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mdnooz_link_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mdnooz_link_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mdnooz_link_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mdnooz_link_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mdnooz_link_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mdnooz_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mdnooz_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mdnooz_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mdnooz_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mdnooz_subheadline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mdnooz_subheadline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mdnooz_subheadline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mdnooz_subheadline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mdnooz_release_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mdnooz_release_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mdnooz_release_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mdnooz_release_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mdnooz_combine_dateline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mdnooz_combine_dateline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mdnooz_combine_dateline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mdnooz_combine_dateline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mdnooz_use_dateline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mdnooz_use_dateline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mdnooz_use_dateline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mdnooz_use_dateline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mdnooz_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mdnooz_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mdnooz_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mdnooz_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mdnooz_post_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mdnooz_post_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mdnooz_post_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mdnooz_post_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nooz_release'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nooz_release'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nooz_release'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nooz_release'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_nooz'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_nooz'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_nooz'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_nooz'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mdnooz_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mdnooz_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mdnooz_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mdnooz_link'"
