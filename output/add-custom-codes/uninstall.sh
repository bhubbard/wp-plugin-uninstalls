#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'custom-css-codes-input'
wp option delete 'custom-footer-codes-input'
wp option delete 'custom-header-codes-input'
wp option delete 'accodes_global_css_on_footer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accodes_hide_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accodes_hide_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accodes_hide_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accodes_hide_header'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_accodes_header_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_accodes_header_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_accodes_header_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_accodes_header_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accodes_hide_footer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accodes_hide_footer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accodes_hide_footer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accodes_hide_footer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_accodes_footer_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_accodes_footer_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_accodes_footer_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_accodes_footer_metabox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_accodes_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_accodes_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_accodes_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_accodes_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_accodes_snippet_language'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_accodes_snippet_language'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_accodes_snippet_language'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_accodes_snippet_language'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_accodes_snippet_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_accodes_snippet_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_accodes_snippet_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_accodes_snippet_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_accodes_snippet_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_accodes_snippet_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_accodes_snippet_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_accodes_snippet_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_accodes_snippet_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_accodes_snippet_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_accodes_snippet_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_accodes_snippet_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_accodes_snippet_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_accodes_snippet_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_accodes_snippet_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_accodes_snippet_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_accodes_snippet_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_accodes_snippet_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_accodes_snippet_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_accodes_snippet_error'"
