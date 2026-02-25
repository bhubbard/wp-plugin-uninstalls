-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('td_al_db_version', 'td_al_access_code', 'td_al_lock_active', 'td_al_divertto');

