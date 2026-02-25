#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ncr_schema_version'
wp option delete 'naticore_db_version'
wp option delete 'naticore_settings'
wp option delete 'naticore_remove_data_on_uninstall'
wp option delete 'naticore_last_integrity_check'
wp option delete 'naticore_last_orphaned_check'
wp option delete 'naticore_orphaned_count'

# Delete Transients
wp transient delete 'naticore_activation_notice'
wp transient delete 'naticore_onboarding_done'
wp transient delete 'naticore_integrity_notice'
wp transient delete 'naticore_orphaned_notice_shown'

