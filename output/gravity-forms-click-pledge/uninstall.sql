-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('gf_settings', 'gravityformsaddon_gravityformsrecaptcha_settings', 'gfcnp_plugin', 'gf_cnp_settings', 'gfcnp_activation_error');

