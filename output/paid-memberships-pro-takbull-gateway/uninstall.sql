-- WordPress Plugin Uninstall SQL Script

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('pmpro_trial_level_used', 'pmpro_default_level');
DELETE FROM wp_usermeta WHERE meta_key IN ('pmpro_trial_level_used', 'pmpro_default_level');
DELETE FROM wp_termmeta WHERE meta_key IN ('pmpro_trial_level_used', 'pmpro_default_level');
DELETE FROM wp_commentmeta WHERE meta_key IN ('pmpro_trial_level_used', 'pmpro_default_level');

