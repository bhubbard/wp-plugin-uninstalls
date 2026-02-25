#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_qt_redirects_map'
wp option delete 'qtranslate_default_language'
wp option delete 'qtranslate_enabled_languages'
wp option delete 'qtranslate_url_mode'
wp option delete '_qt_import_status'
wp option delete 'qtranslate_term_name'
wp option delete 'temp_qtranslate_terms'
wp option delete 'temp_hierarchy_terms'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_children'"
wp option delete 'qtranslate_language_names'
wp option delete '_qt_importer_clean_has_run'
wp option delete 'qtranslate_flag_location'
wp option delete 'qtranslate_flags'
wp option delete 'qtranslate_locales'
wp option delete 'qtranslate_na_messages'
wp option delete 'qtranslate_date_formats'
wp option delete 'qtranslate_time_formats'
wp option delete 'qtranslate_use_strftime'
wp option delete 'qtranslate_ignore_file_types'
wp option delete 'qtranslate_detect_browser_language'
wp option delete 'qtranslate_hide_untranslated'
wp option delete 'qtranslate_auto_update_mo'
wp option delete 'qtranslate_next_update_mo'
wp option delete 'qtranslate_hide_default_language'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qt_imported'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qt_imported'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qt_imported'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qt_imported'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qt_cleaned'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qt_cleaned'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qt_cleaned'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qt_cleaned'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_qt_links_fixed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_qt_links_fixed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_qt_links_fixed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_qt_links_fixed'"
