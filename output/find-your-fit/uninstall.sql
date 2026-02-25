-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fyffwSelectVariation', 'fyffwSelectCategory', 'fyffwSelectStyle', 'fyffwSelectLocation', 'fyffwSizeLocation');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fyffw_size_adjustment', 'fyffw_button_visibility');
DELETE FROM wp_usermeta WHERE meta_key IN ('fyffw_size_adjustment', 'fyffw_button_visibility');
DELETE FROM wp_termmeta WHERE meta_key IN ('fyffw_size_adjustment', 'fyffw_button_visibility');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fyffw_size_adjustment', 'fyffw_button_visibility');

