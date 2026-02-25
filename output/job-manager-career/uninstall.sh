#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thjmf_htaccess_hash_key'
wp option delete 'current_theme'

# Delete Transients
wp transient delete 'thjmf_apply_now_submit'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thjm_post_custom_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thjm_post_custom_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thjm_post_custom_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thjm_post_custom_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured_job'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured_job'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured_job'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured_job'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'experience'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'experience'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'experience'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'experience'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'expired_job'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'expired_job'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'expired_job'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'expired_job'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thjmf_deactivation_snooze'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thjmf_deactivation_snooze'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thjmf_deactivation_snooze'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thjmf_deactivation_snooze'"
