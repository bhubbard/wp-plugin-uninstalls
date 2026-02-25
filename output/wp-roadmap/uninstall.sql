-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_feedback_roadmap_general_settings', 'roadmap_import_success');

