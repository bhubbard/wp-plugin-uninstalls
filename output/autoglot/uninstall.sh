#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autoglot_translation_default_language'
wp option delete 'autoglot_setup_complete'
wp option delete 'autoglot_translation_API_key'
wp option delete 'autoglot_translation_enable'
wp option delete 'autoglot_admin_notice'
wp option delete 'woocommerce_permalinks'
wp option delete 'autoglot_wpcount'
wp option delete 'autoglot_countwords'
wp option delete 'autoglot_countactivewords'
wp option delete 'autoglot_stats_updated'
wp option delete 'autoglot_translation_adminonly'
wp option delete 'autoglot_translation_floatbox'
wp option delete 'autoglot_translation_popup_switcher'
wp option delete 'autoglot_translation_floatbox_position'
wp option delete 'autoglot_translation_language_names'
wp option delete 'autoglot_translation_hreflangs'
wp option delete 'autoglot_translation_comments_translate '
wp option delete 'autoglot_translation_comments_same_language'
wp option delete 'autoglot_translation_custom_titles'
wp option delete 'autoglot_translation_skip_caching'
wp option delete 'autoglot_translation_widget_signature'
wp option delete 'autoglot_translation_translate_urls'
wp option delete 'autoglot_translation_editors_edit'
wp option delete 'autoglot_translation_advanced_search'
wp option delete 'autoglot_translation_sitemap_priority'
wp option delete 'autoglot_translation_repeat_balance'
wp option delete 'autoglot_translation_active_languages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'autoglot_translation_language_flags_%'"
wp option delete 'autoglot_translation_manual_strings'
wp option delete 'autoglot_translation_add_lngcode'

# Delete Transients
wp transient delete 'text_replacement_settings_errors'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autoglot_hide_translation_plugins_notice_until'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autoglot_hide_translation_plugins_notice_until'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autoglot_hide_translation_plugins_notice_until'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autoglot_hide_translation_plugins_notice_until'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autoglot_comment_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autoglot_comment_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autoglot_comment_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autoglot_comment_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoglot_textrepl_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoglot_textrepl_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoglot_textrepl_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoglot_textrepl_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_autoglot_menu_item'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_autoglot_menu_item'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_autoglot_menu_item'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_autoglot_menu_item'"
