#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'chrs_eztexting_oauth_tokens'
wp option delete 'chrs_eztexting_admin_notifications'
wp option delete 'gravityformsaddon_chrs-eztexting-sync-for-gravityforms_settings'
wp option delete 'chrs_eztexting_logs'
wp option delete 'chrs_eztexting_failed_entries'

# Delete Transients
wp transient delete 'chrs_eztexting_groups'
wp transient delete 'chrs_eztexting_contact_fields'

