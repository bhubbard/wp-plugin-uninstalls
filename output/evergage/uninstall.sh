#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'evergage_account'
wp option delete 'evergage_dataset'
wp option delete 'evergage_track_anonymous'
wp option delete 'evergage_synchronous'
wp option delete 'evergage_promote'
wp option delete 'evergage_onmessage'
wp option delete 'evergage_siteconfig'
wp option delete 'evergage_apitoken'
wp option delete 'evergage_available_servers'
wp option delete 'evergage_connectivity_time'

