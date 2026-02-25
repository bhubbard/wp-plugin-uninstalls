-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ethoseo_hide_ethoseo', 'ethoseo_te_dictionary', 'ethoseo_te_trackforms', 'ethoseo_te_trackoutbound', 'ethoseo_te_tracksearchforms', 'ethoseo_te_trackemail', 'ethoseo_te_trackgooglerank', 'ethoseo_te_universal', 'ethoseo_te_infooter', 'ethoseo_te_debug', 'ethoseo_te_special', 'ethoseo_te_activated');

