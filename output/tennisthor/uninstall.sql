-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tennisthor_admin_api_token', 'tennisthor_frontend_club_id', 'tennisthor_admin_user_details', 'tennisthor_register_page', 'tennisthor_rating_page', 'tennisthor_login_page', 'tennisthor_thor_power_rating_page', 'tennisthor_tournament_detail_page', 'tennisthor_tournaments_page', 'tennisthor_reservation_page');

