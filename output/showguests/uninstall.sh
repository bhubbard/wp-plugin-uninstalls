#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'showguestcounts'
wp option delete 'showguestmyname'
wp option delete 'Showguests_guests_info'

