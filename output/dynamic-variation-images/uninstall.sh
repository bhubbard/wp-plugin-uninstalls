#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcvip_display_style_migrated'
wp option delete 'wcvip_display_style'
wp option delete 'wcvip_deactivation_feedback_log'
wp option delete 'wcvip_lazy_load'
wp option delete 'wcvip_show_badge'
wp option delete 'wcvip_image_limit'
wp option delete 'wcvip_use_attribute_sections'
wp option delete 'wcvip_out_of_stock_action'
wp option delete 'wcvip_attribute_styles'
wp option delete 'wcvip_display_in_dropdown'
wp option delete 'wcvip_display_thumbnails'
wp option delete 'wcvip_cdn_enabled'
wp option delete 'wcvip_cdn_url'
wp option delete 'wcvip_enable_shop'
wp option delete 'wcvip_buttons_orientation'
wp option delete 'wcvip_security_logging_enabled'
wp option delete 'wcvip_security_logging_database'
wp option delete 'wcvip_security_log_retention_days'
wp option delete 'wcvip_delete_data_on_uninstall'

# Delete Transients
wp transient delete 'wcvip_activated'

# Clear Cron Jobs
wp cron event delete 'wcvip_clean_security_logs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcvip_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcvip_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcvip_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcvip_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcvip_display_style'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcvip_display_style'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcvip_display_style'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcvip_display_style'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcvip_designer_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcvip_designer_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcvip_designer_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcvip_designer_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wcvip_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wcvip_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wcvip_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wcvip_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wcvip_attribute_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wcvip_attribute_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wcvip_attribute_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wcvip_attribute_styles'"
