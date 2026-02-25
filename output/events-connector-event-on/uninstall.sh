#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'momo_themes_exim_options'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_active_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'evcal_options_evcal_1'
wp option delete 'evo_tax_meta'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete 'update_themes'
wp transient delete '_fs_api_connection_retry_counter'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mmt_eo_exim_export_to_eventbrite'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mmt_eo_exim_export_to_eventbrite'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mmt_eo_exim_export_to_eventbrite'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mmt_eo_exim_export_to_eventbrite'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mmt_eo_exim_eventbrite_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mmt_eo_exim_eventbrite_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mmt_eo_exim_eventbrite_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mmt_eo_exim_eventbrite_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'evcal_srow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'evcal_srow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'evcal_srow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'evcal_srow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'evcal_erow'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'evcal_erow'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'evcal_erow'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'evcal_erow'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'evcal_repeat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'evcal_repeat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'evcal_repeat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'evcal_repeat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'evcal_rep_freq'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'evcal_rep_freq'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'evcal_rep_freq'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'evcal_rep_freq'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'repeat_intervals'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'repeat_intervals'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'repeat_intervals'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'repeat_intervals'"
