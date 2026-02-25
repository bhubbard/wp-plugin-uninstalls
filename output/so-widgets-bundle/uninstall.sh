#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'siteorigin_installer'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'siteorigin_installer_admin_dismissed'
wp option delete 'siteorigin_premium_affiliate_id'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%]'"
wp option delete 'sowb_block_migration'
wp option delete 'siteorigin_widget_bundle_version'
wp option delete 'siteorigin_widgets_old_widgets'
wp option delete 'siteorigin_widgets_new_widgets'
wp option delete 'siteorigin_widgets_active'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'so_contact_hashes'

# Delete Transients
wp transient delete 'siteorigin_installer_product_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%]' OR option_name LIKE '_site_transient_%]'"
wp transient delete 'sow:cleared'
wp transient delete 'siteorigin_panels_widgets'
wp transient delete 'siteorigin_panels_widget_dialog_tabs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'teasers_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'teasers_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'teasers_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'teasers_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
