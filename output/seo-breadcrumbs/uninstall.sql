-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sbc_id', 'sbc_separator', 'sbc_home', 'sbc_default_settings', 'sbc_before_bgcolor', 'sbc_after_bgcolor', 'sbc_before_fontcolor', 'sbc_after_fontcolor', 'sbc_separator_color');
DELETE FROM wp_options WHERE option_name LIKE 'sbc_%';

