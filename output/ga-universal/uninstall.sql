-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ethoseo_gau_properties', 'ethoseo_gau_titleoverride', 'ethoseo_gau_before', 'ethoseo_gau_after', 'ethoseo_gau_infooter', 'ethoseo_gau_debug', 'ethoseo_gau_consoledebug', 'ethoseo_gau_overridetitle', 'ethoseo_gau_hide_ethoseo', 'ethoseo_gau_activated', 'ethoseo_gau_hidefor');

