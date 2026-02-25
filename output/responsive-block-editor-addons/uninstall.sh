#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_block'
wp option delete 'rbea_custom_css_on'
wp option delete 'rbea_blocks'
wp option delete 'rbea_global_inherit_from_theme'
wp option delete 'rbea_global_inherit_from_theme_last_changed'
wp option delete 'rbea_default_content_width'
wp option delete 'rbea_default_container_gap'
wp option delete 'rbea_default_container_padding'
wp option delete 'rbea_auto_block_recovery'
wp option delete 'rbea_template_library_button_on'
wp option delete 'total-responsive-sites-data'
wp option delete 'responsive_block_editor_addons_review_notice_dismissed'
wp option delete 'responsive_block_editor_addons_review_notice'
wp option delete 'responsive_block_editor_addons_intial_timeout'
wp option delete 'responsive_block_editor_addons_template_library_used'
wp option delete 'rbea_blocks_data_update'
wp option delete 'wc_am_client_responsive_addons_pro_activated'
wp option delete 'last_xml_export_checksums'
wp option delete 'reads_app_settings'
wp option delete 'total-responsive-site-pages'

# Delete Transients
wp transient delete 'responsive_block_editor_addons_activation_redirect'
wp transient delete 'responsive_block_editor_addons_intial_timeout'
wp transient delete 'responsive_block_editor_addons_timeout'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_rbea-instagram-api_%' OR option_name LIKE '_site_transient_rbea-instagram-api_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rbea_templates_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rbea_templates_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rbea_templates_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rbea_templates_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rbea_template_favorites'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rbea_template_favorites'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rbea_template_favorites'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rbea_template_favorites'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rba_category'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rba_category'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rba_category'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rba_category'"
