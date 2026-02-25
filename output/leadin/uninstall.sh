#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpe_template'
wp option delete 'leadin_portalId'
wp option delete 'leadin_account_name'
wp option delete 'leadin_portal_domain'
wp option delete 'leadin_hublet'
wp option delete 'leadin_disable_internal_tracking'
wp option delete 'leadin_business_unit_id'
wp option delete 'leadin_access_token'
wp option delete 'leadin_refresh_token'
wp option delete 'leadin_expiry_time'
wp option delete 'leadin_activation_time'
wp option delete 'leadin_content_embed_ui_install'

# Delete Transients
wp transient delete 'proxy_mappings'

# Clear Cron Jobs
wp cron event delete 'leadin_update_proxy_mappings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leadin_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leadin_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leadin_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leadin_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leadin_skip_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leadin_skip_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leadin_skip_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leadin_skip_review'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leadin_review_banner_last_call'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leadin_review_banner_last_call'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leadin_review_banner_last_call'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leadin_review_banner_last_call'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leadin_has_min_contacts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leadin_has_min_contacts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leadin_has_min_contacts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leadin_has_min_contacts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'leadin_track_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'leadin_track_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'leadin_track_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'leadin_track_consent'"
