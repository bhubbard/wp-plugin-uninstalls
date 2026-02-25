-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('srcrqs_query_string_remove_ques', 'srcrqs_query_string_remove_amp');

