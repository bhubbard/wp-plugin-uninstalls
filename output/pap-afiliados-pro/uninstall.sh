#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'papafpro_db_version'
wp option delete 'papafpro_settings'
wp option delete 'papafpro_capabilities_added'
wp option delete 'papafpro_activated'
wp option delete 'papafpro_onboarding_cleanup_done'
wp option delete 'papafpro_appearance_configured'
wp option delete 'papafpro_category_children'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_papafpro_csv_file_%' OR option_name LIKE '_site_transient_papafpro_csv_file_%'"
wp transient delete 'papafpro_clear_stats_limit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_papafpro_click_interval_%' OR option_name LIKE '_site_transient_papafpro_click_interval_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'papafpro_image_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'papafpro_image_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'papafpro_image_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'papafpro_image_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'papafpro_affiliate_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'papafpro_affiliate_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'papafpro_affiliate_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'papafpro_affiliate_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'papafpro_marketplace'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'papafpro_marketplace'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'papafpro_marketplace'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'papafpro_marketplace'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'papafpro_welcome_banner_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'papafpro_welcome_banner_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'papafpro_welcome_banner_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'papafpro_welcome_banner_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'papafpro_affiliate_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'papafpro_affiliate_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'papafpro_affiliate_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'papafpro_affiliate_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'papafpro_created_by_csv'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'papafpro_created_by_csv'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'papafpro_created_by_csv'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'papafpro_created_by_csv'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'papafpro_custom_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'papafpro_custom_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'papafpro_custom_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'papafpro_custom_badge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
