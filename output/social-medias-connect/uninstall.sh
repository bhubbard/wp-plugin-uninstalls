#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smc_global_option'
wp option delete 'smc_weibo_options'
wp option delete 'smc_weibo_appkey'
wp option delete 'smc_vesion_compatible'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_sync'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_sync'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_sync'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_sync'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smcdata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smcdata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smcdata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smcdata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smc_weibo_email_bind'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smc_weibo_email_bind'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smc_weibo_email_bind'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smc_weibo_email_bind'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'smcidentity_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'smcidentity_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'smcidentity_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'smcidentity_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smcoldversion'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smcoldversion'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smcoldversion'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smcoldversion'"
