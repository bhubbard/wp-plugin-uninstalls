-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('hetjens_registered_only_active', 'hetjens_registered_only_feed');

