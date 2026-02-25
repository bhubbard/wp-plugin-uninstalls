-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ptreq_post_types', 'ptreq_character_limit', 'ptreq_ignore_chars');

