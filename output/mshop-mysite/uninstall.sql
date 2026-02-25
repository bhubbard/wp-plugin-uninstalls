-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('msov_track_enabled', 'msov_conversation_params', 'msov_enabled', 'msov_verification_params');

