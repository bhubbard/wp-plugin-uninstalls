#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp3cxw'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tcxwm_webinar_data_%' OR option_name LIKE '_site_transient_tcxwm_webinar_data_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_config_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_config_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_config_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_config_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
