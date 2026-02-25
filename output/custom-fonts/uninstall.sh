#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_optin'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_analytics_installed_time'"
wp option delete 'bcf_preloading_fonts'
wp option delete 'bcf_font_urls'
wp option delete 'bcf_custom_fonts_2_0_2_migration'
wp option delete 'bcf_custom_fonts_2_0_migration'
wp option delete '_custom_fonts_db_version'
wp option delete 'bsf_analytics_optin'

# Delete Transients
wp transient delete 'bsf_analytics_track'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fonts-data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fonts-data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fonts-data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fonts-data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fonts-face'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fonts-face'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fonts-face'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fonts-face'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'font-type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'font-type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'font-type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'font-type'"
