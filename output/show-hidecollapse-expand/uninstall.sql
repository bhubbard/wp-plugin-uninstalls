-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('bg_shce_effectsEnabled', 'bg_shce_animationEffect', 'bg_shce_animationSpeed', 'bg_shce_stickToBottom', 'bg_shce_preset1');

