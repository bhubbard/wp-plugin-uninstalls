-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('tgentg_main_options', 'tgentg_generator_options', 'tgentg_cleanupfilter_options');

