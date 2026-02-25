-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpm', 'lt1', 'gt1', 'gt1lt2po', 'gt1po', 'autots');

