#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wplng_custom_css'
wp option delete 'wplng_excluded_url'
wp option delete 'wplng_excluded_selectors'
wp option delete 'wplng_request_free_key'
wp option delete 'wplng_api_key_data'
wp option delete 'wplng_api_key'
wp option delete 'wplng_website_language'
wp option delete 'wplng_target_languages'
wp option delete 'wplng_flags_style'
wp option delete 'wplng_sitemap_xml'
wp option delete 'wplng_hreflang'
wp option delete 'wplng_translate_search'
wp option delete 'wplng_sitemap_xsl_override'
wp option delete 'wplng_load_in_progress'
wp option delete 'wplng_browser_language_redirect'
wp option delete 'wplng_website_flag'
wp option delete 'wplng_insert'
wp option delete 'wplng_theme'
wp option delete 'wplng_style'
wp option delete 'wplng_name_format'
wp option delete 'wplng_dictionary_entries'
wp option delete 'wplng_link_media_entries'
wp option delete 'wplng_api_overloaded'
wp option delete 'wplng_hb_last_update'
wp option delete 'wplng_version'

# Delete Transients
wp transient delete 'wplng_api_key_error'
wp transient delete 'wplng_cached_translations'
wp transient delete 'wplng_cached_slugs'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplng_slug_translations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplng_slug_translations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplng_slug_translations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplng_slug_translations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplng_translation_translations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplng_translation_translations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplng_translation_translations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplng_translation_translations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplng_slug_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplng_slug_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplng_slug_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplng_slug_original'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplng_slug_md5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplng_slug_md5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplng_slug_md5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplng_slug_md5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplng_slug_original_language_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplng_slug_original_language_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplng_slug_original_language_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplng_slug_original_language_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplng_translation_discovery_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplng_translation_discovery_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplng_translation_discovery_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplng_translation_discovery_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplng_translation_original_language_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplng_translation_original_language_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplng_translation_original_language_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplng_translation_original_language_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplng_translation_md5'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplng_translation_md5'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplng_translation_md5'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplng_translation_md5'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wplng_translation_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wplng_translation_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wplng_translation_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wplng_translation_original'"
