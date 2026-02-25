-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('desktop_breakopint', 'tablet_breakopint_start', 'tablet_breakopint_end', 'mobile_breakopint_end');

