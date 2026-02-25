-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sc_session_handler_clean_on_open', 'sc_session_handler_clean_on_gc', 'sc_session_handler_clean_every', 'sc_session_handler_version');

