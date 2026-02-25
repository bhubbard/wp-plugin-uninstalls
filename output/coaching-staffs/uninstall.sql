-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('mstw_cs_options');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('mstw_cs_experience', 'mstw_cs_alma_mater', 'mstw_cs_degree', 'mstw_cs_birth_date', 'mstw_cs_home_town', 'mstw_cs_high_school', 'mstw_cs_family', 'mstw_cs_position_coach', 'mstw_cs_display_order');
DELETE FROM wp_usermeta WHERE meta_key IN ('mstw_cs_experience', 'mstw_cs_alma_mater', 'mstw_cs_degree', 'mstw_cs_birth_date', 'mstw_cs_home_town', 'mstw_cs_high_school', 'mstw_cs_family', 'mstw_cs_position_coach', 'mstw_cs_display_order');
DELETE FROM wp_termmeta WHERE meta_key IN ('mstw_cs_experience', 'mstw_cs_alma_mater', 'mstw_cs_degree', 'mstw_cs_birth_date', 'mstw_cs_home_town', 'mstw_cs_high_school', 'mstw_cs_family', 'mstw_cs_position_coach', 'mstw_cs_display_order');
DELETE FROM wp_commentmeta WHERE meta_key IN ('mstw_cs_experience', 'mstw_cs_alma_mater', 'mstw_cs_degree', 'mstw_cs_birth_date', 'mstw_cs_home_town', 'mstw_cs_high_school', 'mstw_cs_family', 'mstw_cs_position_coach', 'mstw_cs_display_order');

