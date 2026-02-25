#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'theme_activation_mode'
wp option delete 'accron_media_id'
wp option delete 'widget_search'
wp option delete 'widget_recent_entries'
wp option delete 'widget_archive'
wp option delete 'sidebars_widgets'
wp option delete 'avril_media_id'
wp option delete 'widget_archives'
wp option delete 'conceptly_media_id'
wp option delete 'aravalli_media_id'
wp option delete 'startkit_media_id'
wp option delete 'boostify_media_id'
wp option delete 'item_details_page'
wp option delete 'corpex_media_id'
wp option delete 'widget_tag_cloud'
wp option delete 'hantus_media_id'
wp option delete 'eduvert_media_id'
wp option delete 'evita_media_id'
wp option delete 'fiona_blog_media_id'
wp option delete 'gradiant_media_id'
wp option delete 'medazin_media_id'
wp option delete 'widget_calendar'
wp option delete 'metasoft_media_id'
wp option delete 'news_25_media_id'
wp option delete 'widget_block'
wp option delete 'custom_texo_project_id'
wp option delete 'nexcraft_media_id'
wp option delete 'custom_texo_faq_id'
wp option delete 'renoval_media_id'
wp option delete 'webique_media_id'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'popular_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'popular_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'popular_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'popular_badge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'packages_ribbon_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'packages_ribbon_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'packages_ribbon_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'packages_ribbon_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'packages_price_badge'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'packages_price_badge'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'packages_price_badge'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'packages_price_badge'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'packages_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'packages_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'packages_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'packages_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'packages_button_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'packages_button_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'packages_button_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'packages_button_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'packages_button_link_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'packages_button_link_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'packages_button_link_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'packages_button_link_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'packages_star'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'packages_star'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'packages_star'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'packages_star'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_button_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_button_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_button_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_button_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'project_button_link_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'project_button_link_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'project_button_link_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'project_button_link_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plans_currency'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plans_currency'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plans_currency'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plans_currency'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plans_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plans_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plans_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plans_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plans_button_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plans_button_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plans_button_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plans_button_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'price_recomended'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'price_recomended'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'price_recomended'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'price_recomended'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plans_button_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plans_button_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plans_button_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plans_button_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'plans_button_link_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'plans_button_link_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'plans_button_link_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'plans_button_link_target'"
