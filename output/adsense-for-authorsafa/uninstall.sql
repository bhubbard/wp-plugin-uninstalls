-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('afa_option_name', 'afa_option_name[adposition]', 'afa_option_name[adpub_id]');

