-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('en_p_t_ek_e');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('en_p_t_has_ek', '_en_p_t_r_id', '_en_p_t_e_iv');
DELETE FROM wp_usermeta WHERE meta_key IN ('en_p_t_has_ek', '_en_p_t_r_id', '_en_p_t_e_iv');
DELETE FROM wp_termmeta WHERE meta_key IN ('en_p_t_has_ek', '_en_p_t_r_id', '_en_p_t_e_iv');
DELETE FROM wp_commentmeta WHERE meta_key IN ('en_p_t_has_ek', '_en_p_t_r_id', '_en_p_t_e_iv');

