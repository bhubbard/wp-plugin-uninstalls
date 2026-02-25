#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dbem_sync_translations_multisite_progress'
wp option delete 'em_wpml_version'
wp option delete 'em_wpml_disable_recurrence_notice'
wp option delete 'dbem_events_page'
wp option delete 'dbem_rsvp_enabled'
wp option delete 'dbem_version'

