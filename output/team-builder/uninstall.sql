-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('Team_B_default_Settings', 'wpsm_team_p_review');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('Team_B_Settings', 'wpsm_team_b_data', 'wpsm_team_b_count');
DELETE FROM wp_usermeta WHERE meta_key IN ('Team_B_Settings', 'wpsm_team_b_data', 'wpsm_team_b_count');
DELETE FROM wp_termmeta WHERE meta_key IN ('Team_B_Settings', 'wpsm_team_b_data', 'wpsm_team_b_count');
DELETE FROM wp_commentmeta WHERE meta_key IN ('Team_B_Settings', 'wpsm_team_b_data', 'wpsm_team_b_count');

