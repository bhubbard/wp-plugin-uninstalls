-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wbvp_display', 'wbvp_better_variation', 'wbvp_hide_reset', 'wbvp_format');

