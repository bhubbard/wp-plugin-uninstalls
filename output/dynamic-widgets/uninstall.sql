-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('dynwid_old_method', 'dynwid_page_limit', 'dynwid_version', 'dynwid_housekeeping_lastrun', 'recently_activated', 'qtranslate_enabled_languages', 'qtranslate_default_language');

