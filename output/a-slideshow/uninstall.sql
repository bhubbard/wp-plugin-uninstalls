-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('a_slideshow_options', 'a_slideshow_custom', 'a_slideshow_widget');

