#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tennisthor_admin_api_token'
wp option delete 'tennisthor_frontend_club_id'
wp option delete 'tennisthor_admin_user_details'
wp option delete 'tennisthor_register_page'
wp option delete 'tennisthor_rating_page'
wp option delete 'tennisthor_login_page'
wp option delete 'tennisthor_thor_power_rating_page'
wp option delete 'tennisthor_tournament_detail_page'
wp option delete 'tennisthor_tournaments_page'
wp option delete 'tennisthor_reservation_page'

