-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('divi_engine_options', 'divi_fb_license', 'wp_enhanced_licenses', 'wpe_incomplete_achievements', 'wpe_complete_achievements', 'somfrp_gen_settings', 'somfrp_security_settings', 'somfrp_design_settings');

