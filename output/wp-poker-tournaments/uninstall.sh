#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pokertournaments_style'
wp option delete 'pokertournaments_nofollow'
wp option delete 'pokertournaments_active_hall'
wp option delete 'pokertournaments_affil_link'
wp option delete 'pokertournaments_time_offset'
wp option delete 'halls_update'
wp option delete 'poker_halls'

