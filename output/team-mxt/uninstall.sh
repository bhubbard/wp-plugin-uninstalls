#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'team_mxt_all_members'
wp option delete 'team_mxt_member_data'
wp option delete 'team_mxt_member_photo'
wp option delete 'team_mxt_cards_in_row_pc'
wp option delete 'team_mxt_cards_in_row_tablet'
wp option delete 'team_mxt_use_filtering'
wp option delete 'team_mxt_use_carousel'
wp option delete 'team_mxt_version'
wp option delete 'team_mxt_settings'

# Delete Transients
wp transient delete 'team_mxt_add_member_success'

