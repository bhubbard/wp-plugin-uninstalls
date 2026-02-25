-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('border_hadith_color', 'border_hadith_bloc', 'background_hadith_bloc', 'color_hadith_ref', 'background_hadith_ref', 'hadith_custum_css');

