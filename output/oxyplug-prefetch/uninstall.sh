#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'oxy_prefetch_version'
wp option delete 'oxy_prefetches_number_status'
wp option delete 'oxy_prefetches_number'
wp option delete 'oxy_prefetch_hover_status'
wp option delete 'oxy_prefetch_prerender_number_status'
wp option delete 'oxy_prefetch_prerender_number'
wp option delete 'oxy_prefetch_prerender_hover_status'
wp option delete 'oxy_prefetch_prerender_href_exclusion_status'
wp option delete 'oxy_prefetch_prerender_match'
wp option delete 'oxy_prefetch_prerender_notice_dismissed'

# Delete Transients
wp transient delete 'oxy_prefetch_errors'
wp transient delete 'oxy_prefetch_success_messages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oxy_prefetch_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oxy_prefetch_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oxy_prefetch_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oxy_prefetch_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oxy_prefetch_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oxy_prefetch_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oxy_prefetch_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oxy_prefetch_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oxy_prefetch_prerender_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oxy_prefetch_prerender_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oxy_prefetch_prerender_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oxy_prefetch_prerender_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_oxy_prefetch_prerender_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_oxy_prefetch_prerender_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_oxy_prefetch_prerender_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_oxy_prefetch_prerender_url'"
