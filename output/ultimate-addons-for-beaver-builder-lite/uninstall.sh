#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_optin'"
wp option delete 'bsf_usage_last_displayed_time'
wp option delete 'bsf_usage_migrated'
wp option delete 'bsf_analytics_last_displayed_time'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_usage_installed_time'"
wp option delete 'uabb_hide_branding'
wp option delete 'bsf_force_check_extensions'
wp option delete 'uabb_lite_redirect'
wp option delete '_uabb_lite_journey_details'
wp option delete '_uabb_lite_1_2_4_ver'
wp option delete '_uabb_cloud_templats'
wp option delete '_uabb_enabled_icons'
wp option delete 'bsf_usage_optin'
wp option delete 'uabb_usage_optin'
wp option delete 'bsf_usage_installed_time'
wp option delete 'uabb_usage_installed_time'
wp option delete '_uabb_global_settings'
wp option delete '_uabb_lite_saved_version'
wp option delete '_fl_builder_uabb_cloud_templates'
wp option delete 'allowed_astra_notices'

# Delete Transients
wp transient delete 'bsf_analytics_track'
wp transient delete 'bsf_usage_track'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'uabb-cta-link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'uabb-cta-link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'uabb-cta-link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'uabb-cta-link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uabb_lite_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uabb_lite_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uabb_lite_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uabb_lite_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_data_back'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_data_back'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_data_back'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_data_back'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_draft'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fl_builder_draft_back'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fl_builder_draft_back'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fl_builder_draft_back'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fl_builder_draft_back'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_uabb_lite_converted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_uabb_lite_converted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_uabb_lite_converted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_uabb_lite_converted'"
