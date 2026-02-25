#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'orgseries_grouping_version'
wp option delete 'orgseries_grouping_import_completed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'orgser_grp_upgrade_%'"
wp option delete 'org_series_options'
wp option delete 'pp_series_taxonomy_slug'
wp option delete 'pps_post_list_box_defaults_created'
wp option delete 'pps_post_navigation_defaults_created'
wp option delete 'pps_post_navigation_default_id'
wp option delete 'im_unpublished_series'
wp option delete 'im_published_series'
wp option delete 'orgseries_plugin_activation_errors'
wp option delete 'orgseries_install_key'
wp option delete 'pp_series_2_7_1_upgraded'
wp option delete 'pp_series_2_8_0_upgraded'
wp option delete 'pp_series_2_10_0_upgraded'
wp option delete 'pp_series_2_10_0_1_upgraded'
wp option delete 'pp_series_2_11_1_upgraded'
wp option delete 'series_icon_path'
wp option delete 'series_icon_url'
wp option delete 'series_icon_filetypes'
wp option delete 'publishpress_multi_series_supported'
wp option delete 'orgseries_update_message'
wp option delete 'os_multi_import'
wp option delete 'org_series_version'
wp option delete 'orgseries_version'
wp option delete 'org_series_oldversion'
wp option delete 'series_has_been_fixed'
wp option delete '_split_terms'
wp option delete 'active_sitewide_plugins'
wp option delete 'org_series_is_initialized'
wp option delete 'orgSeries_latest_series_widget'
wp option delete 'orgSeries_widget'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%layout_meta_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%layout_meta_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%layout_meta_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%layout_meta_value'"
