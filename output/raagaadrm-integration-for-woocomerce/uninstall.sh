#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'raagaa_drm_org_secret'
wp option delete 'raagaa_drm_org_email '
wp option delete 'raagaa_drm_org_email'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_use_raagaa_drm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_use_raagaa_drm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_use_raagaa_drm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_use_raagaa_drm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rg_prod_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rg_prod_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rg_prod_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rg_prod_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_use_raagaa_drm_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_use_raagaa_drm_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_use_raagaa_drm_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_use_raagaa_drm_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rg_company_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rg_company_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rg_company_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rg_company_id'"
