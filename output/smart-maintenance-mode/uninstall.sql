-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('smm_version', 'disable_smm', 'smm_heading', 'smm_subheading', 'smm_image', 'smm_roles', 'smm_html', 'smm_countdown', 'smm_donate_popup');

