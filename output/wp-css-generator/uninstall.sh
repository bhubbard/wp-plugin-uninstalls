#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_css_generator_css_setting_google_fonts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wp_css_generator_css_%'"
wp option delete 'wp_css_generator_css_setting_css'
wp option delete 'wp_css_generator_first_activation'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%css_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%css_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%css_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%css_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%important'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%important'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%important'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%important'"
