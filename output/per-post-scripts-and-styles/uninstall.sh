#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ppss'

# Delete Transients
wp transient delete 'PW_Alerts'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppss_header_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppss_header_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppss_header_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppss_header_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppss_footer_scripts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppss_footer_scripts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppss_footer_scripts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppss_footer_scripts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppss_styles'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppss_styles'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppss_styles'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppss_styles'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppss_extras'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppss_extras'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppss_extras'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppss_extras'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ppss_footer_extras'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ppss_footer_extras'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ppss_footer_extras'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ppss_footer_extras'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_ppss_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_ppss_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_ppss_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_ppss_%'"
