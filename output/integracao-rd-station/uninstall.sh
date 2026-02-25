#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rdsm_tracking_code'
wp option delete 'rdsm_general_settings'
wp option delete 'rdsm_access_token'
wp option delete 'rdsm_refresh_token'
wp option delete 'rdsm_woocommerce_settings'
wp option delete 'rdsm_base_migrated'
wp option delete 'rdsm_public_token'
wp option delete 'rdsm_private_token'
wp option delete 'rdscript_all_head'
wp option delete 'rdscript_all_body'
wp option delete 'rdsm_integrations_log_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cf7_mapped_fields_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cf7_mapped_fields_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cf7_mapped_fields_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cf7_mapped_fields_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'gf_mapped_fields_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'gf_mapped_fields_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'gf_mapped_fields_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'gf_mapped_fields_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'form_identifier'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'form_identifier'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'form_identifier'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'form_identifier'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'token_rdstation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'token_rdstation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'token_rdstation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'token_rdstation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gf_mapped_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gf_mapped_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gf_mapped_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gf_mapped_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'use_post_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'use_post_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'use_post_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'use_post_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rdscriptcontentinhead'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rdscriptcontentinhead'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rdscriptcontentinhead'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rdscriptcontentinhead'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rdscriptcontentinfooter'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rdscriptcontentinfooter'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rdscriptcontentinfooter'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rdscriptcontentinfooter'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rdscriptcontenttop'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rdscriptcontenttop'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rdscriptcontenttop'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rdscriptcontenttop'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rdscriptcontentbottom'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rdscriptcontentbottom'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rdscriptcontentbottom'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rdscriptcontentbottom'"
