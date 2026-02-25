-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fa_emoticons_enable', 'fa_emoticons_style', 'fa_emoticons_kit_url');

