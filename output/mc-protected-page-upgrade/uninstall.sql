-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mc6397ppu_duration_hours', 'mc6397ppu_duration_minutes', 'mc6397ppu_duration_seconds');

