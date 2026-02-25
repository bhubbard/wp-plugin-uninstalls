-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('revicoul_revision_limit', 'revicoul_autosave_enabled', 'revicoul_delete_data');

