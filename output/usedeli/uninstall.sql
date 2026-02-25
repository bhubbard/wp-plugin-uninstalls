-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('usedeli_api', 'usedeli_mls_id', 'usedeli_logo', 'usedeli_color', 'usedeli_position', 'usedeli_display_name', 'usedeli_display_on', 'usedeli_post_ids', 'usedeli_token', 'usedeli_initial_question', 'usedeli_status');

