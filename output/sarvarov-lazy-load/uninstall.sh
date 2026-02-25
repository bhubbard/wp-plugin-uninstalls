#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sarvarov_lazy_load'

# Delete Transients
wp transient delete 'sarvarov_lazy_load_dynamic_js'
wp transient delete 'sarvarov_lazy_load_dynamic_css'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sarvarov_lazy_load_cache'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sarvarov_lazy_load_cache'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sarvarov_lazy_load_cache'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sarvarov_lazy_load_cache'"
