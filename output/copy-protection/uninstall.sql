-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('disable-right-cklick', 'f12', 'disable_right_cklick_text');

