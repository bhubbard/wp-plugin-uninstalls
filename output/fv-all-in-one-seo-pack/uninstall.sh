#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_deferred_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_deferred_errors'"
wp option delete 'aioseop_options'
wp option delete 'aiosp_post_title_format'
wp option delete 'aiosp-shorten-link-install'
wp option delete 'fv_simpler_seo_version'
wp option delete 'aioseop_category_titles'
wp option delete 'wp_attachment_pages_enabled'
wp option delete 'fv_seo_ads_disabled'
wp option delete 'xmlsf_sitemaps'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_menulabel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_menulabel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_menulabel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_menulabel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_titleatr'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_titleatr'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_titleatr'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_titleatr'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_custom_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_custom_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_custom_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_custom_canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseop_nofollow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseop_nofollow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseop_nofollow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseop_nofollow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fv_event_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fv_event_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fv_event_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fv_event_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'title_tag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'title_tag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'title_tag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'title_tag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autometa'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autometa'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autometa'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autometa'"
