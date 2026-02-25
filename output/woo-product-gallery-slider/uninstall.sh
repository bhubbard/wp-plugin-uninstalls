#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csf_demo_mode'
wp option delete 'wpgs_form'
wp option delete 'woocommerce_placeholder_image'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'ciwpgs_installed'
wp option delete 'wcpg_plugin_review'
wp option delete 'dfwc-banner'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'rdn_fetch_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cdx-wpgs-plugin-info-%' OR option_name LIKE '_site_transient_cdx-wpgs-plugin-info-%'"
wp transient delete 'wpgs-review-later'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpgs_product_variation_%' OR option_name LIKE '_site_transient_wpgs_product_variation_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rn_last_notification_%' OR option_name LIKE '_site_transient_rn_last_notification_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpi_check_ran_%' OR option_name LIKE '_site_transient_wpi_check_ran_%'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wavi_value'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wavi_value'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wavi_value'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wavi_value'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twist_video_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twist_video_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twist_video_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twist_video_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rn_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rn_dismissed'"
