#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ultp_builder_conditions'
wp option delete 'ultp_site_dark_logo'
wp option delete 'widget_block'
wp option delete 'ultp_frontpage_builder_comp'
wp option delete 'ultp_options'
wp option delete '__ultp_site_type'
wp option delete 'active_sitewide_plugins'
wp option delete 'edd_ultp_license_data'
wp option delete 'postx_global'
wp option delete 'site_logo'
wp option delete 'ultp_premade_wishlist'
wp option delete 'ultpPresetColors'
wp option delete 'ultpPresetGradients'
wp option delete 'ultpPresetTypos'
wp option delete 'edd_ultp_license_key'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ultp_helloBar%' OR option_name LIKE '_site_transient_ultp_helloBar%'"
wp transient delete 'ultp_generalDiscount'
wp transient delete 'wpxpo_installation_date'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__ultp_preview_%' OR option_name LIKE '_site_transient__ultp_preview_%'"
wp transient delete 'durbin_country_code'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ultp_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ultp_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ultp_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ultp_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__builder_feature_video'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__builder_feature_video'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__builder_feature_video'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__builder_feature_video'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__builder_feature_caption'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__builder_feature_caption'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__builder_feature_caption'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__builder_feature_caption'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__container_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__container_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__container_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__container_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__builder_sidebar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__builder_sidebar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__builder_sidebar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__builder_sidebar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__builder_widget_area'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__builder_widget_area'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__builder_widget_area'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__builder_widget_area'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__ultp_builder_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__ultp_builder_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__ultp_builder_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__ultp_builder_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__post_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__post_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__post_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__post_views_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ultp_category_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ultp_category_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ultp_category_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ultp_category_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ultp_category_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ultp_category_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ultp_category_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ultp_category_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'share_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'share_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'share_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'share_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__font_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__font_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__font_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__font_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ultp_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ultp_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ultp_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ultp_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__ultp_starter_pack_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__ultp_starter_pack_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__ultp_starter_pack_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__ultp_starter_pack_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '__ultp_starter_pack_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '__ultp_starter_pack_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '__ultp_starter_pack_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '__ultp_starter_pack_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hash'"
