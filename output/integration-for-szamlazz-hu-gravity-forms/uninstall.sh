#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_gf_szamlazz_pro_enabled'
wp option delete '_gf_szamlazz_pro_key'
wp option delete '_gf_szamlazz_pro_email'
wp option delete '_gf_szamlazz_error'
wp option delete '_gf_szamlazz_cookie_name'

# Delete Transients
wp transient delete 'gf_szamlazz_mnb_arfolyam_kozep'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gf_szamlazz_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gf_szamlazz_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gf_szamlazz_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gf_szamlazz_admin_notices'"
