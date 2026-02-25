#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpadpcbu_pages_created'
wp option delete 'page_settings'
wp option delete 'wpadpcbu_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'wpadpcbu_installed'

# Delete Transients
wp transient delete 'wpadpcbu_flush_rewrite'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpadpcbu_pcbuilder_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpadpcbu_pcbuilder_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpadpcbu_pcbuilder_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpadpcbu_pcbuilder_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpadpcbu_component_filters_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpadpcbu_component_filters_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpadpcbu_component_filters_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpadpcbu_component_filters_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpadpcbu_component_filter_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpadpcbu_component_filter_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpadpcbu_component_filter_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpadpcbu_component_filter_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'component-image-id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'component-image-id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'component-image-id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'component-image-id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpadpcbu_component_serial'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpadpcbu_component_serial'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpadpcbu_component_serial'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpadpcbu_component_serial'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpadpcbu_required_component'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpadpcbu_required_component'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpadpcbu_required_component'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpadpcbu_required_component'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpadpcbu_product_features_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpadpcbu_product_features_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpadpcbu_product_features_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpadpcbu_product_features_list'"
