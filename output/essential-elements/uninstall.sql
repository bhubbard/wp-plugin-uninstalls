-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('esse_settings', 'esse_modules', 'esse_progress_bar_settings', 'esse_scroll_top_settings', 'esse_scroll_bar_settings', 'esse_version', 'esse_installed', 'esse_flash_notices');

