-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('ik_wp_show', 'ik_adm_show', 'ik_always', 'ik_uris', 'ik_wp_location', 'ik_adm_location', 'ik_wp_type', 'ik_adm_type', 'ik_wp_color', 'ik_adm_color', 'ik_wp_inputs', 'ik_adm_inputs', 'ik_wp_gateway', 'ik_adm_gateway', 'ik_wp_parags', 'ik_adm_parags', 'ik_wp_profanity', 'ik_adm_profanity', 'ik_wp_txtbg', 'ik_adm_txtbg', 'ik_wp_prompt', 'ik_adm_prompt');

