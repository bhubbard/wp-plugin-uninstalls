#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ogf_dismiss_guide'
wp option delete 'fp-typekit-data'
wp option delete 'downloaded_font_files'
wp option delete 'fp-typekit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'dismissed-%'"
wp option delete 'ogf_do_activation_redirect'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ogf_external_font_css_%' OR option_name LIKE '_site_transient_ogf_external_font_css_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'metaboxhidden_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'metaboxhidden_%'"
