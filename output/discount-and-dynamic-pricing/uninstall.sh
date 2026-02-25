#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'thwdpf_since'
wp option delete 'active_sitewide_plugins'
wp option delete 'thwdpf_advanced_settings'

# Delete Transients
wp transient delete 'thwdpf_review_request_notice_dismissed'
wp transient delete 'thwdpf_skip_review_request_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thwdpf_deactivation_snooze'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thwdpf_deactivation_snooze'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thwdpf_deactivation_snooze'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thwdpf_deactivation_snooze'"
