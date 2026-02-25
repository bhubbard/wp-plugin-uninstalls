#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'optimizme_mazen_jwt_secret_%'"
wp option delete 'wpseo_titles'
wp option delete 'aioseop_options'
wp option delete 'optimizme_mazen_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'optimizme_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'optimizme_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'optimizme_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'optimizme_canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aviaLayoutBuilder_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'optimizme_metatitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'optimizme_metatitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'optimizme_metatitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'optimizme_metatitle'"
