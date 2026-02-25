-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('lamt_display_many', 'lamt_poster_size', 'lamt_caption_position');

