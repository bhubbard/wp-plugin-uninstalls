-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('personalizer');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('persona_primary_color', 'persona_secondary_color', 'persona_sort_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('persona_primary_color', 'persona_secondary_color', 'persona_sort_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('persona_primary_color', 'persona_secondary_color', 'persona_sort_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('persona_primary_color', 'persona_secondary_color', 'persona_sort_order');

