-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('unlitogd_banner_text', 'unlitogd_primary_color', 'unlitogd_secondary_color', 'unlitogd_policy_link', 'unlitogd_scripts_analytics', 'unlitogd_scripts_marketing', 'unlitogd_text_color', 'unlitogd_policy_version', 'unlitogd_revocation_button', 'unlitogd_banner_bg_color', 'unlitogd_secondary_btn_color', 'unlitogd_save_btn_color', 'unlitogd_overlay_color');

