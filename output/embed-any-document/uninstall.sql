-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ead_height', 'ead_width', 'ead_download', 'ead_text', 'ead_provider', 'ead_mediainsert');

