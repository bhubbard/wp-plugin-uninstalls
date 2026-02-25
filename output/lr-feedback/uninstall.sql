-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lrf_feedbacktitle', 'lrf_formshortcode', 'lrf_formposition');

