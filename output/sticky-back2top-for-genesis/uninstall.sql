-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sb2t_color', 'sb2t_pointer', 'sb2t_location', 'sb2t_size', 'sb2t_shape', 'sb2t_arrowcolor');

