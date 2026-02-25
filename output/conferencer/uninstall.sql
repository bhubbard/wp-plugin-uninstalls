-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('conferencer_messages', 'conferencer_logo_regeneration_needed', 'conferencer_sponsors_widget_image_sizes', 'conferencer_caching', 'conferencer_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_conferencer_order', '_conferencer_starts', '_conferencer_ends', '_conferencer_logo_width', '_conferencer_logo_height', '_conferencer_non_session', '_conferencer_link');
DELETE FROM wp_usermeta WHERE meta_key IN ('_conferencer_order', '_conferencer_starts', '_conferencer_ends', '_conferencer_logo_width', '_conferencer_logo_height', '_conferencer_non_session', '_conferencer_link');
DELETE FROM wp_termmeta WHERE meta_key IN ('_conferencer_order', '_conferencer_starts', '_conferencer_ends', '_conferencer_logo_width', '_conferencer_logo_height', '_conferencer_non_session', '_conferencer_link');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_conferencer_order', '_conferencer_starts', '_conferencer_ends', '_conferencer_logo_width', '_conferencer_logo_height', '_conferencer_non_session', '_conferencer_link');
DELETE FROM wp_postmeta WHERE meta_key LIKE '%s';
DELETE FROM wp_usermeta WHERE meta_key LIKE '%s';
DELETE FROM wp_termmeta WHERE meta_key LIKE '%s';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '%s';
DELETE FROM wp_postmeta WHERE meta_key LIKE '_conferencer_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_conferencer_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_conferencer_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_conferencer_%';

