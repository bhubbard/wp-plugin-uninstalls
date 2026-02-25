-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('shabm_settings', 'shabm_presets', 'bg_shce_effectsEnabled', 'bg_shce_animationEffect', 'bg_shce_animationSpeed', 'bg_shce_stickToBottom', 'bg_shce_accordion');

