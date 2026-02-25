-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('plrrtc_smallest_size', 'plrrtc_largest_size');

