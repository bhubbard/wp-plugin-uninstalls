#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registered'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-was-registered'"
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'cm_refresh_404_permalinks'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_glossary_disable_for_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_glossary_disable_for_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_glossary_disable_for_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_glossary_disable_for_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cmtt_highlightFirstOnly'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cmtt_highlightFirstOnly'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cmtt_highlightFirstOnly'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cmtt_highlightFirstOnly'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_glossary_disable_dom_parser_global_settings_for_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_glossary_disable_dom_parser_global_settings_for_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_glossary_disable_dom_parser_global_settings_for_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_glossary_disable_dom_parser_global_settings_for_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cmtt_disable_acf_for_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cmtt_disable_acf_for_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cmtt_disable_acf_for_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cmtt_disable_acf_for_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edit_glossary_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edit_glossary_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edit_glossary_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edit_glossary_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_glossary_disable_tooltip_for_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_glossary_disable_tooltip_for_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_glossary_disable_tooltip_for_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_glossary_disable_tooltip_for_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_glossary_disable_links_for_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_glossary_disable_links_for_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_glossary_disable_links_for_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_glossary_disable_links_for_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cmtt_new_page_exception'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cmtt_new_page_exception'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cmtt_new_page_exception'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cmtt_new_page_exception'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
