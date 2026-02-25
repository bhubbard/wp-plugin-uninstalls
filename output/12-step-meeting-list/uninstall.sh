#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tsml_data_sources'
wp option delete 'tsml_auto_import'
wp option delete 'tsml_log'
wp option delete 'tsml_version'
wp option delete 'tsml_program'
wp option delete 'tsml_distance_units'
wp option delete 'tsml_contact_display'
wp option delete 'tsml_sharing'
wp option delete 'tsml_sharing_keys'
wp option delete 'tsml_feedback_addresses'
wp option delete 'tsml_notification_addresses'
wp option delete 'tsml_user_interface'
wp option delete 'tsml_timezone'
wp option delete 'tsml_entity'
wp option delete 'tsml_addresses'
wp option delete 'tsml_bounds'
wp option delete 'tsml_types_in_use'
wp option delete 'tsml_cache_writable'
wp option delete 'tsml_import_buffer'
wp option delete 'tsml_cache'

# Delete Transients
wp transient delete 'tsml_bulk_process'

# Clear Cron Jobs
wp cron event delete 'tsml_scan_data_source'
wp cron event delete 'tsml_auto_import'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'data_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'data_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'data_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'data_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formatted_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formatted_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formatted_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formatted_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'approximate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'approximate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'approximate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'approximate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'timezone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'end_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'group_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'group_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'group_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'group_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'conference_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'conference_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'conference_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'conference_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'conference_url_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'conference_url_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'conference_url_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'conference_url_notes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'conference_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'conference_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'conference_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'conference_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'conference_phone_notes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'conference_phone_notes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'conference_phone_notes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'conference_phone_notes'"
