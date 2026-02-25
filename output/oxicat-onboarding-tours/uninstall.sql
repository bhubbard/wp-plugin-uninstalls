-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('oot_completed_tours', 'oot_last_tour', 'oot_last_step', '_tour_steps');
DELETE FROM wp_usermeta WHERE meta_key IN ('oot_completed_tours', 'oot_last_tour', 'oot_last_step', '_tour_steps');
DELETE FROM wp_termmeta WHERE meta_key IN ('oot_completed_tours', 'oot_last_tour', 'oot_last_step', '_tour_steps');
DELETE FROM wp_commentmeta WHERE meta_key IN ('oot_completed_tours', 'oot_last_tour', 'oot_last_step', '_tour_steps');

